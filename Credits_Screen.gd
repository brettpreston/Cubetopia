extends Control

var MainMenu=load("res://Scenes/MainMenu.tscn")

func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(MainMenu)
