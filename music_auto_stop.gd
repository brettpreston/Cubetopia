
extends Node3D

func _ready() -> void:
	TransitionScene.fadein()

func stop_music() -> void:
	music_player.stop()
	
