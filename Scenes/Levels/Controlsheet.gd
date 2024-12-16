extends Node3D

@export var sprite: Sprite3D
@export var area: Area3D

func _ready():
	# Connect signals
	area.body_entered.connect(_on_area_body_entered)
	area.body_exited.connect(_on_area_body_exited)
	# Hide the sprite initially
	sprite.visible = false

func _on_area_body_entered(body: Node):
	if body.name == "Player":  # Replace "Player" with the actual name of your player character node
		sprite.visible = true

func _on_area_body_exited(body: Node):
	if body.name == "Player":  # Replace "Player" with the actual name of your player character node
		sprite.visible = false
