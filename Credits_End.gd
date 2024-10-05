extends Control

var MainMenu=load("res://Scenes/MainMenu.tscn")

func _ready() -> void:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
func _on_button_pressed() -> void:
	get_tree().change_scene_to_packed(MainMenu)


#	if Input.is_action_pressed("ui_cancel"):
#		unpause()

func _on_quit_pressed():
	get_tree().quit()
