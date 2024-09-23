extends MeshInstance3D

@export_multiline var text: String
@export var width := 1200
@export var audio_stream: AudioStream


var shown = false
var cubetopia_mesh = load("res://Scenes/Titles/Quote_mesh.tres")

func _ready():
	$Area3D.body_entered.connect(_on_body_entered)
	mesh = mesh.duplicate()
	mesh.text = text
	mesh.width = width
	hide()

func _on_body_entered(body):
	if body is CharacterBody3D:
		if not shown:
			show()
			shown = true
			print("[Cubetopia] Showing " + name)
			$AnimationPlayer.play("slide_down")
			$Area3D/AudioStreamPlayer3D.stream = audio_stream
			$Area3D/AudioStreamPlayer3D.play()
