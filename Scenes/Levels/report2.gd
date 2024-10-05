extends Label3D



var inequality: String="The world is plagued by inequalities. \n"
var captured: String="The power was captured by new elites and their position is well entrenched. \n"
var volatile: String="The power was captured by new elites, but their position is feeble."
var solidarity: String="The society is happy despite the occasional hardships."
var utopia: String="Thank you for building a better future."

func _ready():
	var Text2: String =epilogue()
	self.text=Text2
		
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
			y=y+"STATE: BUREUCRATIC \n"
	else:
		y=y+"STATE: MINIMAL\n"
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

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
