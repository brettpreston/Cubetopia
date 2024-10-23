extends CanvasLayer

@onready var transition = $transition
# Called when the node enters the scene tree for the first time.
func fadein() -> void:
	transition.play("fade_in")
	
func fadeout() -> void:
	transition.play("fade_out")
