extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if "Player" in body.name:
		#player_data.mapGlobality += 0
		#player_data.mapTech += 0
		player_data.mapEconomy += -1
		queue_free()
