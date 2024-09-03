extends Area3D

# Define the target node path
@export var target_node_path: NodePath
@export var tween_duration: float = 1.0

func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		var target_node = get_node(target_node_path)
		if target_node:
			body.global_transform.origin = target_node.global_transform.origin
