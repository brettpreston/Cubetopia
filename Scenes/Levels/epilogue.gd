extends Label3D

var smallcom: String="You walk among your neighbors \n and look up at the starry sky. \n"
var global: String="You are on your way to see your friends in the Capital, \n and look at the world outside the train window. \n"
var nature: String="The wind sways the young trees gently. \n You can hear the nightingales.\n"
var space: String="The lights are reflected in the station dome, \n beyond it in the sky you can see the waxing Earth.\n "
var capitalismState: String="You know that some of your friends are struggling,\n the inequality has not been contained.\n But the elite have a strong hold on power.\n Many will be afraid to strive for change."
var capitalismNoState: String="You know that some of your friends are struggling,\n the inequality has not been contained. Here and there, \n you are starting to hear about violent incidents. \n Perhaps things will have to change again."
var commerceNature: String="You've made some pastries for the market.\n "
var commerceTech: String="You’ve made some medicine in your lab,\n that should make Athena feel better. \n"
var central: String=""
var captured: String=""
var volatile: String=""
var solidarity: String=""
var utopia: String=""

func _ready():
	var Text: String =epilogue()
	self.text=Text
		
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
