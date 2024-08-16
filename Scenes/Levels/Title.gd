


extends Area3D
#const audio_resource = preload("res://Assets/audio/cubetopia title.mp3")
@export var audio_stream: AudioStreamPlayer3D

func _on_body_entered(body):
	audio_stream.play()
	# Attach the audio_player to your scene or relevant node.

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_body_entered(body):
#	pass # Replace with function body.
