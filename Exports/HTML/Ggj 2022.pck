GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�1      �      &�y���ڞu;>��.p   res://DemoScene.tscn�      K      �i�����}����6�/   res://Global.gd.remap   �T      !       z�<��z]
����*Xn   res://Global.gdc�      |       �̣*m0�5��˖F�   res://MapScript.gd.remap�T      $       � ���H�#	�nl�r   res://MapScript.gdc `      �      O�^�����y��x�;<�   res://Player.gd.remap   �T      !       ��0�F �qq��dX��   res://Player.gdc       �      ��/@����P@�=   res://Player.tscn          �      LMR7�Ya�g���8   res://TestBásico.tscn  �            I`���!{�����   res://TileSet.tres  �-      0      �O��y�Kr���WA'L   res://default_env.tres  1      �       um�`�N��<*ỳ�8   res://icon.png  pU      �      G1?��z�c��vN��   res://icon.png.import   �7      �      ��fe��6�B��^ U�<   res://platformer_controller/platformer_controller.gd.remap   U      F       ��ŵ�#��I��(��8   res://platformer_controller/platformer_controller.gdc   P:      3      ���IRy�|����Ę'�   res://project.binary`b      [      �!c��U0ٹa�m6[gd_scene load_steps=7 format=2]

[ext_resource path="res://platformer_controller/platformer_controller.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 512, 56 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 208, 56 )

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 32, 304 )

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 32, 32 )

[node name="Main" type="Node2D"]

[node name="StaticBody2D" type="StaticBody2D" parent="."]
position = Vector2( 520, 544 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D"]
margin_left = -520.0
margin_top = -56.0
margin_right = 504.0
margin_bottom = 56.0
color = Color( 0, 0.443137, 0.027451, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D"]
position = Vector2( -8, 0 )
shape = SubResource( 1 )

[node name="StaticBody2D2" type="StaticBody2D" parent="."]
position = Vector2( 520, 360 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D2"]
margin_left = -520.0
margin_top = 16.0
margin_right = -104.0
margin_bottom = 128.0
color = Color( 0, 0.443137, 0.027451, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D2"]
position = Vector2( -312, 72 )
shape = SubResource( 2 )

[node name="StaticBody2D3" type="StaticBody2D" parent="."]
position = Vector2( 520, 360 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D3"]
position = Vector2( -552, -64 )
shape = SubResource( 3 )

[node name="CollisionShape2D2" type="CollisionShape2D" parent="StaticBody2D3"]
position = Vector2( 536, -64 )
shape = SubResource( 3 )

[node name="PlatformerController2D" type="KinematicBody2D" parent="."]
position = Vector2( 288, 320 )
script = ExtResource( 1 )

[node name="icon" type="Sprite" parent="PlatformerController2D"]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlatformerController2D"]
shape = SubResource( 4 )
     GDSC                  ���ӄ�   ������������۶��                                      3YYY8;�  V�  Y`    GDSC      	      �      ���ӄ�   ������Ŷ   �������Ŷ���   ����׶��   ����¶��   ���������������������Ҷ�   �����ڶ�   ������������۶��   ���������������������Ŷ�   ��ۇ����   �����Ķ�   �������ض���   ϶��   ������ض���   ����������������������¶   ���Ӈ���   �������Ӷ���   ׶��   ��ۄ����   ���ӄ���   '        swap_dim      Reseted player pos        swapped dimension                                  ?                         
                           	   %   
   )      *      7      E      J      K      U      V      W      ]      b      h      t      �      �      �      �      �      �      �      �      3YYY8;�  YYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  �  T�  �  �  PQ�  �  &W�	  �
  T�  T�  �  V�  W�	  �
  T�  W�	  �  T�  �  �?  P�  Q�  �  �?  PW�	  �
  T�  Q�  YY0�  PQV�  �?  P�  Q�  &�  T�  V�  W�	  �
  T�  P�  R�  Q�  W�	  �
  T�  P�  R�  Q�  W�	  �  T�  T�  �  �  W�  �  T�  T�  �  �  (V�  W�	  �
  T�  P�  R�  Q�  W�	  �
  T�  P�  R�  Q�  W�	  �  T�  T�  �  �  W�  �  T�  T�  �  Y`     GDSC            {      ������������τ�   ������϶   ����Ҷ��   �������϶���   ��������   �����϶�   �������Ŷ���   ����׶��   ���������Ķ�   ����¶��   ����������������Ҷ��   ζ��   ϶��     �B      ui_left             ui_right      ui_up         ui_down                                                     	      
   !      #      $      %      &      -      .      5      @      F      Q      W      b      h      s      y      3YYYY8;�  Y8;�  Y8;�  �  T�  YYY0�  PQV�  -YYYY0�  P�  QV�  �  ;�  �  T�  �  &P�	  T�
  P�  QQV�  �  T�  �  �  &P�	  T�
  P�  QQV�  �  T�  �  �  &P�	  T�
  P�  QQV�  �  T�  �  �  &P�	  T�
  P�  QQV�  �  T�  �  Y`               [gd_scene load_steps=6 format=2]

[ext_resource path="res://platformer_controller/platformer_controller.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="Animation" id=1]
resource_name = "GravDown"
tracks/0/type = "bezier"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"points": PoolRealArray( 180, -0.25, 0, 0.25, 0, 0, -0.25, 0, 0.25, 0 ),
"times": PoolRealArray( 0, 0.35 )
}

[sub_resource type="Animation" id=2]
resource_name = "GravUp"
tracks/0/type = "bezier"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"points": PoolRealArray( 0, -0.25, 0, 0.25, 0, 180, -0.25, 0, 0.25, 0 ),
"times": PoolRealArray( 0, 0.35 )
}

[sub_resource type="Animation" id=3]
length = 0.001
tracks/0/type = "bezier"
tracks/0/path = NodePath(".:rotation_degrees")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"points": PoolRealArray( 0, -0.25, 0, 0.25, 0 ),
"times": PoolRealArray( 0 )
}

[node name="Player" type="KinematicBody2D"]
scale = Vector2( 0.95, 0.95 )
script = ExtResource( 1 )
max_jump_height = 210
double_jump_height = 397
jump_duration = 0.374
max_jump_amount = 2

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 0.0392157, 0.639216, 0.203922, 1 )
scale = Vector2( 1, 2 )
texture = ExtResource( 2 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
scale = Vector2( 1, 2 )
polygon = PoolVector2Array( 32, -30.2, 32, 30, 30.2, 32, -30, 32, -32, 30.2, -32, -30.2, -30, -31.5, 30, -32 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true

[node name="PlayerAnimations" type="AnimationPlayer" parent="."]
anims/GravDown = SubResource( 1 )
anims/GravUp = SubResource( 2 )
anims/RESET = SubResource( 3 )
   [gd_scene load_steps=4 format=2]

[ext_resource path="res://TileSet.tres" type="TileSet" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://MapScript.gd" type="Script" id=3]

[node name="TestBásico" type="Node2D"]
script = ExtResource( 3 )

[node name="Dim1" type="Node2D" parent="."]

[node name="P1_spawn" type="Position2D" parent="Dim1"]
position = Vector2( -5, -74 )

[node name="Player" parent="Dim1" instance=ExtResource( 2 )]
position = Vector2( -5, -74 )
collision_layer = 6
min_jump_height = 110
double_jump_height = 312

[node name="Camera2D" parent="Dim1/Player" index="2"]
zoom = Vector2( 2, 2 )

[node name="Tile1" type="TileMap" parent="Dim1"]
tile_set = ExtResource( 1 )
collision_use_kinematic = true
collision_layer = 0
collision_mask = 2
format = 1
tile_data = PoolIntArray( -983046, 0, 0, -983045, 0, 0, -983044, 0, 0, -983043, 0, 0, -983042, 0, 0, -983041, 0, 0, -1048576, 0, 0, -1048575, 0, 0, -1048574, 0, 0, -1048573, 0, 0, -1048572, 0, 0, -1048571, 0, 0, -1048570, 0, 0, -1048569, 0, 0, -1048568, 0, 0, -1048567, 0, 0, -1048566, 0, 0, -1048565, 0, 0, -1048564, 0, 0, -1048563, 0, 0, -1048562, 0, 0, -1048561, 0, 0, -1048560, 0, 0, -1048559, 0, 0, -1048558, 0, 0, -1048557, 0, 0, -1048556, 0, 0, -1048555, 0, 0, -1048554, 0, 0, -917510, 0, 0, -983018, 0, 0, -851974, 0, 0, -917482, 0, 0, -786438, 0, 0, -851946, 0, 0, -720902, 0, 0, -720898, 0, 0, -720897, 0, 0, -786432, 0, 0, -786431, 0, 0, -786410, 0, 0, -655366, 0, 0, -720874, 0, 0, -589830, 0, 0, -655338, 0, 0, -524294, 0, 0, -589818, 0, 0, -589817, 0, 0, -589816, 0, 0, -589815, 0, 0, -589814, 0, 0, -589802, 0, 0, -458758, 0, 0, -524266, 0, 0, -393222, 0, 0, -458730, 0, 0, -327686, 0, 0, -393194, 0, 0, -262150, 0, 0, -327658, 0, 0, -196614, 0, 0, -262128, 0, 0, -262127, 0, 0, -262126, 0, 0, -262125, 0, 0, -262122, 0, 0, -131078, 0, 0, -196586, 0, 0, -65542, 0, 0, -131050, 0, 0, -6, 0, 0, -65514, 0, 0, 65530, 0, 0, 65531, 0, 0, 65532, 0, 0, 65533, 0, 0, 65534, 0, 0, 65535, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0 )

[node name="Dim2" type="Node2D" parent="."]

[node name="Tile2" type="TileMap" parent="Dim2"]
modulate = Color( 0.976471, 0.631373, 0.631373, 1 )
tile_set = ExtResource( 1 )
collision_use_kinematic = true
collision_layer = 0
collision_mask = 4
format = 1
tile_data = PoolIntArray( -983046, 0, 0, -983045, 0, 0, -983044, 0, 0, -983043, 0, 0, -983042, 0, 0, -983041, 0, 0, -1048576, 0, 0, -1048575, 0, 0, -1048574, 0, 0, -1048573, 0, 0, -1048572, 0, 0, -1048571, 0, 0, -1048570, 0, 0, -1048569, 0, 0, -1048568, 0, 0, -1048567, 0, 0, -1048566, 0, 0, -1048565, 0, 0, -1048564, 0, 0, -1048563, 0, 0, -1048562, 0, 0, -1048561, 0, 0, -1048560, 0, 0, -1048559, 0, 0, -1048558, 0, 0, -1048557, 0, 0, -1048556, 0, 0, -1048555, 0, 0, -1048554, 0, 0, -1048553, 0, 0, -1048552, 0, 0, -1048551, 0, 0, -1048550, 0, 0, -1048549, 0, 0, -1048548, 0, 0, -1048547, 0, 0, -1048546, 0, 0, -1048545, 0, 0, -917510, 0, 0, -983009, 0, 0, -851974, 0, 0, -917473, 0, 0, -786438, 0, 0, -851958, 0, 0, -851957, 0, 0, -851956, 0, 0, -851955, 0, 0, -851954, 0, 0, -851937, 0, 0, -720902, 0, 0, -786408, 0, 0, -786407, 0, 0, -786406, 0, 0, -786401, 0, 0, -655366, 0, 0, -720865, 0, 0, -589830, 0, 0, -655329, 0, 0, -524294, 0, 0, -589793, 0, 0, -458758, 0, 0, -524261, 0, 0, -524260, 0, 0, -524259, 0, 0, -524257, 0, 0, -393222, 0, 0, -458721, 0, 0, -327686, 0, 0, -393194, 0, 0, -393193, 0, 0, -393185, 0, 0, -262150, 0, 0, -327649, 0, 0, -196614, 0, 0, -262113, 0, 0, -131078, 0, 0, -196582, 0, 0, -196581, 0, 0, -196577, 0, 0, -65542, 0, 0, -131048, 0, 0, -131047, 0, 0, -131046, 0, 0, -131041, 0, 0, -6, 0, 0, -65505, 0, 0, 65530, 0, 0, 65531, 0, 0, 65532, 0, 0, 65533, 0, 0, 65534, 0, 0, 65535, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 30, 0, 0, 31, 0, 0 )

[connection signal="inverted_grav" from="Dim1/Player" to="Dim1/Player" method="_on_Player_inverted_grav"]

[editable path="Dim1/Player"]
          [gd_resource type="TileSet" load_steps=3 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[resource]
0/name = "icon.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC   O        �     ������������τ�   �������������������Ą�   ���������¶�   ����������¶   ���������ƶ�   �����������ض���   ���������޶�   ��������������¶   ������������������¶   ��������������¶   ������������������¶   �����������������¶�   ���������������������¶�   ������������ض��   ����������������ض��   �������������������������Ķ�   ��������������¶   ���������������ض���   �������ض���   ������������ƶ��   ����������Ӷ   ����������Ķ   ����¶��   ���������������϶���   ��������Ҷ��   ����������������Ӷ��   ��������������϶   ������������϶��   �������������������϶���   �������������������������Ķ�   ���������¶�   �����������ƶ���   ��ڶ   ��ն   ����������������   �����������Ķ���   ����Ķ��   ����   ����������������Ķ��   �����϶�   ����������������϶��   ����������������������϶   ����������������������τ����(   �����������������������������������Ķ���   ��������Ҷ��   ��������Ӷ��   �������¶���   ���������������Ŷ���   ����׶��   �������Ķ���   ζ��   ����������Ҷ   ����¶��   ���������Ҷ�   ����¶��   ����������������Ҷ��   ���ⶶ��   ����ⶶ�   ���ƶ���   ���������������������Ҷ�   ����������������������Ҷ   ����������ڶ   ������϶   ϶��   �������������Ӷ�   �涶   ��������������϶   �����������������ض�   ����������ζ   ��������������Ҷ   ���ƶ���   ����Ӷ��   ����������Ķ   ������������Ѷ��   ����������������������������   �������Ӷ���   ���������������Ŷ���   ��������������Ķ   ���϶���   	   move_left      
   move_right        jump      action        dash   �      (      d     333333�?     �?         �                 �������?   ��    
         double vel =          jump vel =                     inverted_grav           ��PN�k@      no        PlayerAnimations      GravUp    333333�?      GravDown                                                     	   (   
   0      1      2      :      ;      C      D      L      M      U      V      \      ]      c      i      o      w      x      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A      B   	  C     D     E   $  F   %  G   ,  H   3  I   4  J   9  K   ?  L   E  M   F  N   K  O   Q  P   W  Q   X  R   \  S   ]  T   ^  U   _  V   `  W   g  X   n  Y   t  Z   u  [   {  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w     x     y     z     {     |     }     ~          �     �   (  �   -  �   .  �   1  �   2  �   7  �   ;  �   >  �   C  �   D  �   E  �   F  �   N  �   R  �   S  �   ^  �   g  �   k  �   l  �   m  �   t  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �     �   $  �   %  �   &  �   /  �   0  �   1  �   :  �   ;  �   D  �   E  �   F  �   L  �   X  �   Y  �   Z  �   _  �   c  �   d  �   j  �   p  �   t  �   z  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �   !  �   "  �   #  �   *  �   .  �   7  �   8  �   9  �   ?  �   Q  �   R  �   S  �   Y  �   ^  �   e  �   i     w    z    �    3YY2�  YYY8;�  V�  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  Y8;�  V�  �  YYY8;�  �  9�  YY8;�	  �  9�
  YY8;�  �  9�  YY8;�  �  9�  YY8;�  �	  YY8;�  �
  Y8;�  �  Y8;�  �  Y8;�  V�  �  YY8;�  V�  �  YYY8;�  V�  �  YY8;�  V�  �  YYY8;�  V�  �  YYYY;�  �  Y;�  �  YYYYY;�  V�  Y;�  V�  Y;�  V�  YY;�  V�  YYYY;�  V�  Y;�  V�  YY;�   �  PQY;�!  �  PQYYB�"  YY5;�#  �$  T�%  PQY5;�&  �$  T�%  PQYY0�'  PQV�  �  �(  P�  R�  Q�  �  �)  P�  R�  Q�  �  �*  P�  R�  Q�  �  �+  P�  R�	  Q�  �  �?  P�  R�  Q�  �?  P�  R�  Q�  �  �,  P�#  Q�  �#  T�-  �  �  �#  T�.  �  �  �  �,  P�&  Q�  �&  T�-  �  �  �&  T�.  �  �  �  �  �  �  �  �  YY0�/  P�0  QV�  ;�1  �  PQ�  �!  T�2  �  �  �  &�3  PQV�  �#  T�4  PQ�  &�#  T�5  PQV�  �  �  �  �  &�6  T�7  P�  QV�  �!  T�2  �  �  �1  �  T�8  �  &�6  T�7  P�  QV�  �!  T�2  �  �  �1  �  T�9  �  �  �  �  &�  V�  &�6  T�7  P�  QV�  �  &�3  PQV�  �:  PQ�  �  �  &�  V�  &�&  T�5  PQ�3  PQV�  �:  PQ�  �  �  &�6  T�;  P�  QV�  �  �  �  �&  T�4  PQ�  �  �  &�3  PQV�  �:  PQ�  �  �  &�6  T�<  P�  QV�  �  �  �  �  &�6  T�;  P�  QV�  �=  P�  Q�  �  ;�>  �  �  &�  V�  �>  �  �  (V�  �>  �  �  �  �  �  &�   T�?  �  V�  �>  �  �  �  &�  �   T�?  	�  V�  &�  	�  �
  V�  �>  �  �  �  �  �!  T�?  �>  �  �   T�2  �
  P�
  P�0  �  QQ�  �  �   �!  �0  �  &P�6  T�;  P�  QQV�  �   �0  �  �1  Y�  �   �@  P�   R�  T�A  QYYYY0�(  P�  R�  QV�  �  �  .P�  �  Q�  P�  R�  QYYY0�)  P�  R�  QV�  �  .P�  �  QP�  QYYY0�*  P�  R�>  QV�  �  �  �  .�
  P�  �>  �  QYYY0�+  P�  R�	  QV�  �  �  ;�B  �  �  P�  R�  QP�  �	  Q�  .�B  �  YYY0�C  P�D  QV�  �  �  .�
  P�  �D  QYYY0�E  P�  R�  QV�  �  .P�  �  Q�  YYY0�:  PQV�  &�  �  �#  T�5  PQV�  �  �  �?  P�  Q�  �  �
  �  �  &�  �  V�  &�  	�  V�  &�  V�  �   T�?  �  �  (V�  �   T�?  �  �  (V�  &�  V�  �   T�?  �  �  (V�  �   T�?  �  �  �  �
  �  �  �  �#  T�F  PQYYY0�  P�G  QV�  �  �G  �  �  �  �(  P�  R�  Q�  �  �)  P�  R�  Q�  �  �*  P�  R�  Q�  �  �+  P�  R�	  QYYY0�  P�G  QV�  �  �G  �  �  �  �(  P�  R�  Q�  �  �)  P�  R�  Q�  �  �*  P�  R�  Q�  �  �+  P�  R�	  QYYY0�
  P�G  QV�  �	  �G  �  �  �+  P�  R�	  QYYY0�  P�G  QV�  �  �G  �  �  �*  P�  R�  QY�  Y0�3  PQV�  .P�H  PQ�  QP�I  PQ�  QYYY0�J  PQV�  �  �  �  &�K  P�  QV�  &�  V�  PW�L  <�M  QT�N  P�  R�  Q�  (V�  PW�L  <�M  QT�N  P�  R�  QY`             [remap]

path="res://Global.gdc"
               [remap]

path="res://MapScript.gdc"
            [remap]

path="res://Player.gdc"
               [remap]

path="res://platformer_controller/platformer_controller.gdc"
          �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         PlatformerController2D        language      GDScript      path   4   res://platformer_controller/platformer_controller.gd      base      KinematicBody2D    _global_script_class_icons0               PlatformerController2D            application/config/name         Ggj 2022   application/run/main_scene          res://TestBásico.tscn     application/config/icon         res://icon.png     autoload/Global         *res://Global.gd   display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script         input/action�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      E      unicode           echo          script      
   input/dash�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script         input/swap_dim�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      Q      unicode           echo          script         layer_names/2d_physics/layer_1         player     layer_names/2d_physics/layer_2         tilemap1   layer_names/2d_physics/layer_3         tilemap2)   physics/common/enable_pause_aware_picking            rendering/threads/thread_model         !   rendering/threads/thread_safe_bvh         )   rendering/environment/default_environment          res://default_env.tres       