extends Control

func _ready():
	PlayerData.map_updated.connect(update_labels)
	for item in PlayerData.map:
		update_labels(item, PlayerData.map[item])
		

func update_labels(item: String, value: int) -> void:
	match item:
		"economy":
			$mapEconomy.text = "Economy = " + str(value)
		"globality":
			$mapGlobality.text = "Globality = " + str(value)
		"tech":
			$mapTech.text = "Tech = " + str(value)
		"state":
			$state.text = "State = " + str(value)
		"resilience":
			$resilience.text = "Resilience = " + str(value)
		"autonomy":
			$autonomy.text = "Autonomy = " + str(value)
