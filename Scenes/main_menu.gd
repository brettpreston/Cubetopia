extends Control

const NEXT_SCENE=preload("res://Scenes/Levels/00Intro.tscn")

func _ready():
#	music_player.play_bird()
	%Start.grab_focus()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(NEXT_SCENE)


func _on_quit_pressed():
	get_tree().quit()


func _on_options_pressed():
	%Settings.show()
