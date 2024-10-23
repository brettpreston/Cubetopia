extends Area3D

var next_scene=load("res://Scenes/Levels/30Nature.tscn")

func _on_body_entered(body):
	if "Player" in body.name:
		get_tree().change_scene_to_packed(next_scene)
