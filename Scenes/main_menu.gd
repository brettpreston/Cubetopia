extends Control

var next_scene=load("res://Scenes/Levels/Level0.tscn")

func _ready():
	music_player.play_bird()
	%Start.grab_focus()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(next_scene)


func _on_quit_pressed():
	get_tree().quit()
