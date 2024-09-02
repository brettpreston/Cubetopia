extends Area3D

# Define the target node path
@export var target_node_path: NodePath

func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		var audio_player = $AudioStreamPlayer3D
		if audio_player:
			audio_player.play()
		var target_node = get_node(target_node_path)
		if target_node:
			body.global_transform.origin = target_node.global_transform.origin
