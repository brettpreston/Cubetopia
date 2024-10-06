extends MeshInstance3D

@export_multiline var text: String
@export var width := 800
@export var audio_stream: AudioStream


var shown = false
var cubetopia_mesh = load("res://Scenes/Titles/Report_mesh.tres")

func _ready():
	$Area3D.body_entered.connect(_on_body_entered)
	mesh = mesh.duplicate()
	var Text2: String =epilogue()
	#self.text=Text2
	mesh.text = Text2
	mesh.width = width
	hide()


var inequality: String="The world is still marred by inequalities. \n"
var captured: String="The power was captured by new elites and their position appears to be well entrenched. Humanity has overcome worse, and it will again."
var volatile: String="New elites threaten to capture power, but their position is feeble. Humanity has overcome worse, and it will again."
var solidarity: String="The society is happy despite the occasional hardships. Thank you for building a better future."
var utopia: String="Thank you for building a better future."


	
		
func epilogue():
	var y: String=""
	if player_data.vautonomy<0:
		y=y+"PERSONAL AUTONOMY: WEAK\n"
	else:
		y=y+"PERSONAL AUTONOMY: STRONG\n"
	if player_data.vresilience<0:
		y=y+"RESILIENCE: WEAK\n"
	else:
		y=y+"RESILIENCE: STRONG\n"
	if player_data.vstate>0:
		if player_data.vautonomy<0:
			y=y+"STATE: OPRESSIVE \n"
		else:
			y=y+"STATE: INEFFICIENT \n"
	else:
		y=y+"STATE: FUNCTIONAL \n"
	y=y+"\n \n"
	if player_data.mapEconomy<-2:
		y=y+inequality
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


func _on_body_entered(body):
	if body is CharacterBody3D:
		if not shown:
			show()
			shown = true
			print("[Cubetopia] Showing " + name)
			$AnimationPlayer.play("slide_down")
			$Area3D/AudioStreamPlayer3D.stream = audio_stream
			$Area3D/AudioStreamPlayer3D.play()
