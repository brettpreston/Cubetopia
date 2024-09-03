extends AudioStreamPlayer



var music_phoenix = "res://Assets/audio/music/test/Phoenix_loop.ogg"
var music_ambi1 = "res://Assets/audio/music/test/BP - Neurons & Nebulae.ogg"
var music_jazz_intro = "res://Assets/audio/music/test/Not_Jazz_Intro.ogg"
var music_jazz = "res://Assets/audio/music/test/Not_Jazz_Main.ogg"

func playjazz():
	$AudioStreamPlayer.stream = music_jazz_intro
	$AudioStreamPlayer.play()
	await $AudioStreamPlayer.finished
	$AudioStreamPlayer.stream = music_jazz
	$AudioStreamPlayer.play()

func playambi():
	$AudioStreamPlayer.stream = music_ambi1
	$AudioStreamPlayer.play()
	
func playbird():
	$AudioStreamPlayer.stream = music_phoenix
	$AudioStreamPlayer.play()

func stopmusic():
	$AudioStreamPlayer.stop()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
