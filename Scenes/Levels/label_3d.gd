extends Label3D

var capitalism: String=""
var captured: String="Greed for wealth no longer drives us, but greed for power has not been stamped out. And the new government worries you. Perhaps things will have to change again."
var volatile: String="You know that complete freedom will require effort, but you are ready for it. And you know others are too."
var solidarity: String="There are still some hardships, but the people have learned to work together in a crisis."
var utopia: String="The world we fought for is here."

func _ready():
	var Text2: String =epilogue()
	self.text=Text2
		
func epilogue():
	var y: String=""
	if player_data.mapEconomy<-2:
		y=y+capitalism
	elif player_data.vautonomy<0:
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
