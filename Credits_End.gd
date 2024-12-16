extends Control

var MainMenu=load("res://Scenes/MainMenu.tscn")

func _ready() -> void:
		TransitionScene.fadein()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
func _on_button_pressed() -> void:
	$Click.play()
	get_tree().change_scene_to_packed(MainMenu)

func _input(_event): 
	if Input.is_action_pressed("StartGP"):_on_button_pressed()

#	if Input.is_action_pressed("ui_cancel"):
#		unpause()

func _on_quit_pressed():
	$Click.play()
	get_tree().quit()


func _on_button_mouse_entered() -> void:
	$Hover.play()


func _on_quit_mouse_entered() -> void:
	$Hover.play()
