extends KinematicBody2D

class_name Player

# Set these to the name of your action (in the Input Map)
export var input_left : String = "move_left"
export var input_right : String = "move_right"
export var input_jump : String = "jump"
export var input_action : String = "action"
export var input_sprint : String = "sprint"
export var input_build : String = "build"

# The max jump height in pixels (holding jump)
export var max_jump_height = 150 setget set_max_jump_height
# The minimum jump height (tapping jump)
export var min_jump_height = 40 setget set_min_jump_height
# The height of your jump in the air
export var double_jump_height = 100 setget set_double_jump_height
# How long it takes to get to the peak of the jump in seconds
export var jump_duration = 0.3 setget set_jump_duration
# Multiplies the gravity by this while falling
export var falling_gravity_multiplier = 1.5
# Set to 2 for double jump
export var max_jump_amount = 1
export var max_acceleration = 4000
export var friction = 8
export var can_hold_jump : bool = false
# You can still jump this many seconds after falling off a ledge
export var coyote_time : float = 0.1
# Only neccessary when can_hold_jump is off
# Pressing jump this many seconds before hitting the ground will still make you jump
export var jump_buffer : float = 0.1

export var boost : float = 100000


export var inverted_gravity : bool = false



var coins = 0
var gravity = 0


# not used
var max_speed = 100
var acceleration_time = 10



# These will be calcualted automatically
var default_gravity : float
var jump_velocity : float
var double_jump_velocity : float
# Multiplies the gravity by this when we release jump
var release_gravity_multiplier : float



var jumps_left : int
var holding_jump := false

var vel = Vector2()
var acc = Vector2()
var dash_dir = Vector2()

signal inverted_grav
signal stuck_on_map
signal died
signal damaged

onready var coyote_timer = Timer.new()
onready var jump_buffer_timer = Timer.new() 


export var hp = 3
export var max_hp = 3





func _ready():
	default_gravity = calculate_gravity(max_jump_height, jump_duration)
	jump_velocity = calculate_jump_velocity(max_jump_height, jump_duration)
	double_jump_velocity = calculate_jump_velocity2(double_jump_height, default_gravity)
	release_gravity_multiplier = calculate_release_gravity_multiplier(jump_velocity, min_jump_height)
	
	print("double vel = ", double_jump_velocity)
	print("jump vel = ", jump_velocity)
	
	add_child(coyote_timer)
	coyote_timer.wait_time = coyote_time
	coyote_timer.one_shot = true
	
	add_child(jump_buffer_timer)
	jump_buffer_timer.wait_time = jump_buffer
	jump_buffer_timer.one_shot = true
	
	inverted_gravity = false
	$HUD.setup_HUD(max_hp)
	
	
func add_coin():
	coins += 1
	print("Player has ", coins, " coins")
	$HUD.update_coins(coins)
	CoinSound.play()
	
func add_gravity():
	gravity += 1
	print("Player has ", coins, " coins")
	$HUD.update_gravity(gravity)
	CoinSound.play()
	
	
func _process(delta):
	if position.y > 500000:
		Global.reload_scene()

func _physics_process(delta):
	
	
	var dash_dir = Vector2()
	
	for index in range(get_slide_count()):
		var collision = get_slide_collision(index)
		if collision.collider.is_in_group("Enemies"):
			if Vector2.UP.dot(collision.normal) > 0.1:
				vel.y = -double_jump_velocity
	
	acc.x = 0
	
	if is_grounded():
		coyote_timer.start()
	if not coyote_timer.is_stopped():
		jumps_left = max_jump_amount
	
	if Input.is_action_pressed(input_left):
		$AnimatedSprite.flip_h = true
		acc.x = -max_acceleration
		dash_dir = Vector2.LEFT
	if Input.is_action_pressed(input_right):
		$AnimatedSprite.flip_h = false
		acc.x = max_acceleration
		dash_dir = Vector2.RIGHT
	
	if Input.is_action_pressed(input_sprint) && is_grounded():
		$AnimatedSprite.speed_scale = 2
		acc.x *= 1.5
	else:
		$AnimatedSprite.speed_scale = 1
	
	# Check for ground jumps when we can hold jump
	if can_hold_jump:
		if Input.is_action_pressed(input_jump):
			# Dont use double jump when holding down
			if is_grounded():
				jump()
	
	# Check for ground jumps when we cannot hold jump
	if not can_hold_jump:
		if not jump_buffer_timer.is_stopped() and is_grounded():
			jump()
	
	# Check for jumps in the air
	if Input.is_action_just_pressed(input_jump):
		holding_jump = true
		jump_buffer_timer.start()
		
		# Only jump in the air when press the button down, code above already jumps when we are grounded
		if not is_grounded():
			jump()
		
	
	if Input.is_action_just_released(input_jump):
		holding_jump = false
		
	if Input.is_action_just_pressed(input_action):
		emit_signal("inverted_grav")
	
	var gravity
	
	if !inverted_gravity:
		gravity = default_gravity
	else:
		gravity = -default_gravity
	
	
	
	if vel.y > 0: # If we are falling
		gravity *= falling_gravity_multiplier
		
	if not holding_jump and vel.y < 0: # if we released jump and are still rising
		if not jumps_left < max_jump_amount - 1: # Always jump to max height when we are using a double jump
			gravity *= release_gravity_multiplier # multiply the gravity so we have a lower jump
		
	
	acc.y = -gravity
	vel.x *= 1 / (1 + (delta * friction))
	
	vel += acc * delta

	vel = move_and_slide(vel, Vector2.UP)



func calculate_gravity(max_jump_height, jump_duration):
	# Calculates the desired gravity by looking at our jump height and jump duration
	# Formula is from this video https://www.youtube.com/watch?v=hG9SzQxaCm8
	return (-2 * max_jump_height) / pow(jump_duration, 2)


func calculate_jump_velocity(max_jump_height, jump_duration):
	# Calculates the desired jump velocity by lookihg at our jump height and jump duration
	return (2 * max_jump_height) / (jump_duration)


func calculate_jump_velocity2(max_jump_height, gravity):
	# Calculates jump velocity from jump height and gravity
	# formula from 
	# https://sciencing.com/acceleration-velocity-distance-7779124.html#:~:text=in%20every%20step.-,Starting%20from%3A,-v%5E2%3Du
	return sqrt(-2 * gravity * max_jump_height)


func calculate_release_gravity_multiplier(jump_velocity, min_jump_height):
	# Calculates the gravity when the key is released based on the minimum jump height and jump velocity
	# Formula is from this website https://sciencing.com/acceleration-velocity-distance-7779124.html
	var release_gravity = 0 - pow(jump_velocity, 2) / (2 * min_jump_height)
	return release_gravity / default_gravity


func calculate_friction(time_to_max):
	# Formula from https://www.reddit.com/r/gamedev/comments/bdbery/comment/ekxw9g4/?utm_source=share&utm_medium=web2x&context=3
	# this friction will hit 90% of max speed after the accel time
	return 1 - (2.30259 / time_to_max)


func calculate_speed(max_speed, friction):
	# Formula from https://www.reddit.com/r/gamedev/comments/bdbery/comment/ekxw9g4/?utm_source=share&utm_medium=web2x&context=3	
	return (max_speed / friction) - max_speed


func jump():
	if jumps_left == max_jump_amount and coyote_timer.is_stopped():
		# Your first jump must be used when on the ground
		# If you fall off the ground and then jump you will be using you second jump
		print("no")
		jumps_left -= 1
		
	if jumps_left > 0:
		if jumps_left < max_jump_amount: # If we are double jumping
			if inverted_gravity:
				vel.y = double_jump_velocity
			else:
				vel.y = -double_jump_velocity
		else:
			if inverted_gravity:
				vel.y = jump_velocity
			else:
				vel.y = -jump_velocity
		jumps_left -= 1
	
	
	coyote_timer.stop()


func set_max_jump_height(value):
	max_jump_height = value
	
	default_gravity = calculate_gravity(max_jump_height, jump_duration)
	jump_velocity = calculate_jump_velocity(max_jump_height, jump_duration)
	double_jump_velocity = calculate_jump_velocity2(double_jump_height, default_gravity)
	release_gravity_multiplier = calculate_release_gravity_multiplier(jump_velocity, min_jump_height)


func set_jump_duration(value):
	jump_duration = value
	
	default_gravity = calculate_gravity(max_jump_height, jump_duration)
	jump_velocity = calculate_jump_velocity(max_jump_height, jump_duration)
	double_jump_velocity = calculate_jump_velocity2(double_jump_height, default_gravity)
	release_gravity_multiplier = calculate_release_gravity_multiplier(jump_velocity, min_jump_height)


func set_min_jump_height(value):
	min_jump_height = value
	release_gravity_multiplier = calculate_release_gravity_multiplier(jump_velocity, min_jump_height)


func set_double_jump_height(value):
	double_jump_height = value
	double_jump_velocity = calculate_jump_velocity2(double_jump_height, default_gravity)

	
func is_grounded():
	return (is_on_floor() && !inverted_gravity) || (is_on_ceiling() && inverted_gravity)


func _on_Player_inverted_grav():
	print("Inverted")
	if gravity > 0:
		inverted_gravity = !inverted_gravity
		gravity -= 1
		$HUD.update_gravity(gravity)
		if has_node("PlayerAnimations"):
			if inverted_gravity:
				($PlayerAnimations as AnimationPlayer).play("GravUp",0.15)
			else:
				($PlayerAnimations as AnimationPlayer).play("GravDown",0.15)


func damage(amount):
	Global.play_sound("res://player_death.wav")
	
	hp = hp - amount
	if hp <= 0:
		Global.reload_scene()
		hp = 0
		emit_signal("died")
		print("Player died")
	else:
		emit_signal("damaged")
		print("Player damaged")
		$HUD.update_hp(hp)
	


func _on_TestBsico_player_death():
	if(inverted_gravity):
		emit_signal("inverted_grav")
		acc = Vector2.ZERO
		vel = Vector2.ZERO








func _on_Restart_pressed():
	get_tree().reload_current_scene()
