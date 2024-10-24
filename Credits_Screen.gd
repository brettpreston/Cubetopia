extends Control

var MainMenu=load("res://Scenes/MainMenu.tscn")

func _on_button_pressed() -> void:
	$Click.play()
	get_tree().change_scene_to_packed(MainMenu)


#func _on_quit_pressed() -> void:
#	pass # Replace with function body.


func _on_button_mouse_entered() -> void:
	$Hover.play()
