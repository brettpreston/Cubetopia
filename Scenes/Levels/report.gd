extends MeshInstance3D

@export_multiline var text: String
@export var width := 1000
@export var audio_stream: AudioStream


#var shown = false
var cube_mesh = load("res://Scenes/Titles/Report_mesh.tres")

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
	var Text2: String =epilogue()
	mesh.text=Text2
		
func epilogue():
	var y: String=""
	if player_data.vautonomy<0:
		if player_data.vstate>0:
			y=y+captured
		else:
			y=y+volatile
	else:
		if player_data.vresilience<0:
			y=y+solidarity
		else:
			y=y+utopia
	return y

func update_visibility():
	if player_data.mapTech <= 0:
		self.show()		
	else:
		self.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
