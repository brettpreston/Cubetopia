extends AudioStreamPlayer

const level_music = preload("res://Assets/audio/music/test/Phoenix_loop.ogg")
const music_ambi = preload("res://Assets/audio/music/test/BP - Neurons & Nebulae.ogg")


func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	stream = music
	volume_db = volume
	play()

func play_bird():
	_play_music(level_music)
func play_ambi():
	_play_music(music_ambi)
func stopmusic():
	stop()
