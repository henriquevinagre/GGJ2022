extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StartButton_pressed():
	Global.next_stage()


func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Options.tscn")


func _on_QuitBottom_pressed():
	get_tree().quit()
