extends ColorRect

var next_scene = load("res://Scenes/MainMenu.tscn")

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var resume_button: Button = $MarginContainer/VBoxContainer/Resume

func _ready() -> void:
	resume_button.pressed.connect(unpause)
	mouse_filter = Control.MOUSE_FILTER_IGNORE


func unpause():
	animator.play("Unpause")
	$Click.play()
	$UnPause.play()
	get_tree().paused = false
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	

func pause():
	animator.play("Pause")
	$Pause.play()
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_quit_pressed():
	$Click.play()
	get_tree().quit()


func _on_main_pressed() -> void:
	$Click.play()
	get_tree().paused = false
	get_tree().change_scene_to_packed(next_scene)


func _on_quit_mouse_entered() -> void:
	$Hover.play()


func _on_main_mouse_entered() -> void:
	$Hover.play()


func _on_resume_mouse_entered() -> void:
	$Hover.play()


func _on_options_pressed() -> void:
	$Hover.play()
	%Settings.show()
