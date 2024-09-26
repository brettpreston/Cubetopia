extends Control


func _process(_delta):
	$mapGlobality.text = "Globality = " + str(player_data.mapGlobality)
	$mapEconomy.text = "Economy = " + str(player_data.mapEconomy)
	$mapTech.text = "Tech = " + str(player_data.mapTech)

	$state.text = "State = " + str(player_data.vstate)
	$resilience.text = "Resilience = " + str(player_data.vresilience)
	$autonomy.text = "Autonomy = " + str(player_data.vautonomy)
