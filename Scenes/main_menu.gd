extends Control

var NEXT_SCENE=load("res://Scenes/Levels/00Intro.tscn")
var Credits=load("res://Scenes/credits.tscn")

#func _ready():
#	TransitionScene.fadein()
#	music_player.play_bird()
#	%Start.grab_focus()

func _on_start_pressed() -> void:
	player_data.mapGlobality = 0
	player_data.mapTech = 0
	player_data.mapEconomy = 0
	player_data.vstate = 0
	player_data.vresilience = 0
	player_data.vautonomy = 0
	TransitionScene.fadeout()
	await get_tree().create_timer(0.25).timeout
	get_tree().change_scene_to_packed(NEXT_SCENE)


func _on_quit_pressed():
	get_tree().quit()


func _on_options_pressed():
	%Settings.show()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(Credits)
