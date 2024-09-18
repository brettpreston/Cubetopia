extends Area3D


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if "Player" in body.name:
		#player_data.mapGlobality += 0
		PlayerData.increase_item("tech", 1)
		#player_data.mapEconomy += 0
		queue_free()
