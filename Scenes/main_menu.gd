extends Control

var NEXT_SCENE=load("res://Scenes/Levels/00Intro.tscn")
var Credits=load("res://Scenes/credits.tscn")

#func _ready():
#	Transition.fadein()
#	music_player.play_bird()
#	%Start.grab_focus()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(NEXT_SCENE)


func _on_quit_pressed():
	get_tree().quit()


func _on_options_pressed():
	%Settings.show()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(Credits)
