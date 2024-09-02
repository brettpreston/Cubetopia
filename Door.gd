extends Node3D

# Reference to the AnimationPlayer
@onready var animation_player = $AnimationPlayer

func _on_area_3d_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		animation_player.play("Close")
