extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	#if body.name == "player":
		PlayerData.add_to_item("globality", 1)
		PlayerData.add_to_item("tech", 0)
		PlayerData.add_to_item("economy", 0)
		queue_free()
