extends Control

var next_scene=load("res://Scenes/Levels/Level0.tscn")

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(next_scene)
