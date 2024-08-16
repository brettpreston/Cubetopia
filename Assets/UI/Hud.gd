extends Control


func _process(delta):
	$mapGlobality.text = "Globality = " + str(player_data.mapGlobality)
	$mapEconomy.text = "Economy = " + str(player_data.mapEconomy)
	$mapTech.text = "Tech = " + str(player_data.mapTech)
