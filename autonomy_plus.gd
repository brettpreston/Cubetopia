extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_shape_entered(_body_rid, body, _body_shape_index, _local_shape_index):
	if "Player" in body.name:
		#player_data.vstate += 0
		#player_data.vresilience += 0
		player_data.vautonomy += +1
		queue_free()
