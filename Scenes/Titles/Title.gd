extends MeshInstance3D

@export_multiline var text: String
@export var width := 800
@export var audio_stream: AudioStream

var shown = false
var cubetopia_mesh = load("res://Scenes/Titles/Title_mesh.tres")
var fade_out_time := 1.0 # seconds
var fade_out_tween: Tween

func _ready():
	$Area3D.body_entered.connect(_on_body_entered)
	$Area3D.body_exited.connect(_on_body_exited)
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
			$Area3D/AudioStreamPlayer3D.volume_db = 0 # Reset volume
			$Area3D/AudioStreamPlayer3D.play()

func _on_body_exited(body):
	if body is CharacterBody3D:
		_fade_out_audio()
		shown = false # Allow retriggering

func _fade_out_audio():
	var player = $Area3D/AudioStreamPlayer3D
	if fade_out_tween:
		fade_out_tween.kill()
	fade_out_tween = create_tween()
	fade_out_tween.tween_property(player, "volume_db", -80, fade_out_time)
