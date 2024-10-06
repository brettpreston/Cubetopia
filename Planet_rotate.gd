extends Node3D
const ROT_speed = 0.005 #deg rotation per frame

func _ready():
	pass
	
func _process(_delta):
	rotate_y(deg_to_rad(ROT_speed))
	rotate_x(deg_to_rad(ROT_speed))
# Called every frame. 'delta' is the elapsed time since the previous frame.
