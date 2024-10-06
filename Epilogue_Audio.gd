extends MeshInstance3D

@export_multiline var text: String
@export var width := 1000
@export var audio_stream: AudioStream
@onready var audio3d = $AudioStreamPlayer3D

var audio_queue = []
var current_index = 0

# Load Audio
var smallcomA = preload("res://Assets/audio/VO/Epilogue/smallcom.ogg")
var globalA = preload("res://Assets/audio/VO/Epilogue/global.ogg")
var natureA = preload("res://Assets/audio/VO/Epilogue/nature.ogg")
var spaceA = preload("res://Assets/audio/VO/Epilogue/space.ogg")
var capitalismStateA = preload("res://Assets/audio/VO/Epilogue/capitalismState.ogg")
var capitalismNoStateA = preload("res://Assets/audio/VO/Epilogue/capitalismNoState.ogg")
var commerceNatureA = preload("res://Assets/audio/VO/Epilogue/commerceNature.ogg")
var commerceTechA = preload("res://Assets/audio/VO/Epilogue/commerceTech.ogg")
var centralA = preload("res://Assets/audio/VO/Epilogue/central.ogg")
var capturedA = preload("res://Assets/audio/VO/Epilogue/captured.ogg")
var volatileA = preload("res://Assets/audio/VO/Epilogue/volatile.ogg")
var solidarityA = preload("res://Assets/audio/VO/Epilogue/solidarity.ogg")
var utopiaA = preload("res://Assets/audio/VO/Epilogue/utopia.ogg")

var shown = false
var cubetopia_mesh = load("res://Scenes/Titles/Epilogue_mesh.tres")

var smallcom: String="You walk among your neighbors and look up at the starry sky. "
var global: String="You are on your way to see your friends in the Capital, and look at the world outside the train window. "
var nature: String="The wind sways the young trees gently, and you can hear the buzzing of bees."
var space: String="The lights are reflected in the station dome, beyond it in the sky you can see the waxing Earth. "
var capitalismState: String="You know that some of your friends are struggling, the inequality has not been contained. But the elite have a strong hold on power. Many will be afraid to strive for change."
var capitalismNoState: String="You know that some of your friends are struggling, the inequality has not been contained. Here and there, you are starting to hear about violent incidents. Perhaps things will have to change again."
var commerceNature: String="You've made some pastries for the market, and you're excited to see what your neighbors will bring."
var commerceTech: String="You’ve made some new medicine in your lab, and you're excited to present it to the crew."
var central: String="Without existential insecurity, humanity is free to focus on seeking fulfilment and joy."
var captured: String="Greed for wealth no longer drives us, but greed for power has not been stamped out. And the new government worries you. Perhaps things will have to change again."
var volatile: String="You know that complete freedom will require effort, but you are ready for it. And you know others are too."
var solidarity: String="There are still some hardships, but the people have learned to work together in a crisis."
var utopia: String="The world we fought for is here."

func _ready():
	var Text: String = epilogue()
	mesh.text = Text
	audio3d.connect("finished", Callable(self, "_on_AudioStreamPlayer3D_finished"))
	play_audio_based_on_choice()

func epilogue() -> String:
	var x: String = ""
	if player_data.mapGlobality <= 0:
		x += smallcom
	else:
		x += global
	if player_data.mapTech <= 0:
		x += nature
	else:
		x += space
	if player_data.mapEconomy <= -3:
		if player_data.vstate > 0:
			x += capitalismState
			return x
		else:
			x += capitalismNoState
			return x
	elif player_data.mapEconomy <= 0:
		if player_data.mapTech <= 0:
			x += commerceNature
		else:
			x += commerceTech
	else:
		x += central
	if player_data.vautonomy < 0:
		if player_data.vstate > 0:
			x += captured
		else:
			x += volatile
	else:
		if player_data.vresilience < 0:
			x += solidarity
		else:
			x += utopia
	return x

func update_visibility():
	if player_data.mapTech <= 0:
		self.show()
	else:
		self.queue_free()

func play_audio(audio: AudioStream):
	audio3d.stream = audio
	audio3d.play()

func play_audio_based_on_choice():
	audio_queue.clear()
	if player_data.mapGlobality <= 0:
		audio_queue.append(smallcomA)
	else:
		audio_queue.append(globalA)
	if player_data.mapTech <= 0:
		audio_queue.append(natureA)
	else:
		audio_queue.append(spaceA)
	if player_data.mapEconomy <= -3:
		audio_queue.append(commerceTechA)
	else:
		audio_queue.append(commerceNatureA)	
		
		
	current_index = 0
	play_next_audio()

func play_next_audio():
	if current_index < audio_queue.size():
		audio3d.stream = audio_queue[current_index]
		audio3d.play()
		current_index += 1

func _on_AudioStreamPlayer3D_finished():
	play_next_audio()


func _on_audio_stream_player_3d_finished() -> void:
	pass # Replace with function body.
