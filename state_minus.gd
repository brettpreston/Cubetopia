extends Area3D

func _on_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		player_data.vstate += -1
		#player_data.vresilience += 0
		#player_data.vautonomy += 0
		queue_free()
