extends Control

var NEXT_SCENE=load("res://Scenes/Levels/00Intro.tscn")
var Credits=load("res://Scenes/credits.tscn")


#func _ready():
#	TransitionScene.fadein()
#	music_player.play_bird()
#	%Start.grab_focus()
	
func _input(_event): 
	if Input.is_action_pressed("StartGP"):_on_start_pressed()

func _on_start_pressed() -> void:
	$Click.play()
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
	$Click.play()
	get_tree().quit()


func _on_options_pressed():
	$Click.play()
	%Settings.show()


func _on_credits_pressed() -> void:
	$Click.play()
	get_tree().change_scene_to_packed(Credits)


func _on_start_mouse_entered() -> void:
	$Hover.play()


func _on_options_mouse_entered() -> void:
	$Hover.play()


func _on_credits_mouse_entered() -> void:
	$Hover.play()


func _on_quit_mouse_entered() -> void:
	$Hover.play()
