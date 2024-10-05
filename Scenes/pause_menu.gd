extends ColorRect

@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var resume_button: Button = $MarginContainer/VBoxContainer/Resume

func _ready() -> void:
	resume_button.pressed.connect(unpause)
	mouse_filter = Control.MOUSE_FILTER_IGNORE

func unpause():
	animator.play("Unpause")
	get_tree().paused = false
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	

func pause():
	animator.play("Pause")
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_quit_pressed():
	get_tree().quit()
