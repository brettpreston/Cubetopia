extends Area3D
@onready var audio_player = $AudioStreamPlayer3D
@export var audio_stream: AudioStream


func _on_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		$AudioStreamPlayer3D.stream = audio_stream
		$AudioStreamPlayer3D.play()
