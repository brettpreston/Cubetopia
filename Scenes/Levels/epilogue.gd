extends MeshInstance3D

@export_multiline var text: String
@export var width := 1000
@export var audio_stream: AudioStream


var shown = false
var cubetopia_mesh = load("res://Scenes/Titles/Epilogue_mesh.tres")

var smallcom: String="You walk among your neighbors and look up at the starry sky. "
var global: String="You are on your way to see your friends in the Capital, and look at the world outside the train window. "
var nature: String="The wind sways the young trees gently, and you can hear the nightingales."
var space: String="The lights are reflected in the station dome, beyond it in the sky you can see the waxing Earth. "
var capitalismState: String="You know that some of your friends are struggling, the inequality has not been contained. But the elite have a strong hold on power. Many will be afraid to strive for change."
var capitalismNoState: String="You know that some of your friends are struggling, the inequality has not been contained. Here and there, you are starting to hear about violent incidents. Perhaps things will have to change again."
var commerceNature: String="You've made some pastries for the market. "
var commerceTech: String="You’ve made some medicine in your lab, that should make Athena feel better. "
var central: String=""
var captured: String=""
var volatile: String=""
var solidarity: String=""
var utopia: String=""

func _ready():
	var Text: String =epilogue()
	mesh.text=Text
		
func epilogue():
	var x: String=""
	if player_data.mapGlobality <= 0:
		x=x+smallcom
	else: 
		x=x+global
	if player_data.mapTech <= 0:
		x=x+nature
	else:
		x=x+space
	if 	player_data.mapEconomy <= -3:
		if player_data.vstate>0:
			x=x+capitalismState
			return x
		else:
			x=x+capitalismNoState
			return x
	elif player_data.mapEconomy <=0:
		if player_data.mapTech<0:
			x=x+commerceNature
		else:
			x=x+commerceTech
	if player_data.vautonomy<0:
		if player_data.vstate>0:
			x=x+captured
		else:
			x=x+volatile
	else:
		if player_data.vresilience<0:
			x=x+solidarity
		else:
			x=x+utopia
	return x

func update_visibility():
	if player_data.mapTech <= 0:
		self.show()		
	else:
		self.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
