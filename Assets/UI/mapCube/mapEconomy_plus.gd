extends Area3D

func _on_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		#player_data.mapGlobality += 0
		#player_data.mapTech += 0
		player_data.mapEconomy += 1
		queue_free()
