extends MeshInstance3D


# Update sphere position based on autoload variables
func _process(delta: float) -> void:
	transform.origin.x = lerp(transform.origin.x, float(player_data.mapEconomy), 0.01)
	transform.origin.z = lerp(transform.origin.z, float(-player_data.mapGlobality), 0.01)
	transform.origin.y = lerp(transform.origin.y, float(player_data.mapTech), 0.01)
