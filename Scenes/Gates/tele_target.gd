extends Area3D
pass
func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		var audio_player = $AudioStreamPlayer3D
		if audio_player:
			audio_player.play()
