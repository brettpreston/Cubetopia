extends MeshInstance3D


# Update sphere position based on autoload variables
func _process(delta: float) -> void:
	transform.origin.x = player_data.mapEconomy
	transform.origin.z = -player_data.mapGlobality
	transform.origin.y = player_data.mapTech
