extends MeshInstance3D

#var shader_material: ShaderMaterial
#@export var emission_color:

# Update sphere position based on autoload variables
func _process(_delta: float) -> void:
	transform.origin.x = lerp(transform.origin.x, float(player_data.mapEconomy), 0.01)
	transform.origin.z = lerp(transform.origin.z, float(player_data.mapGlobality), 0.01)
	transform.origin.y = lerp(transform.origin.y, float(player_data.mapTech), 0.01)

	# Update emission color
	#var r = float(player_data.vstate) / 100.0
	#var g = float(player_data.vresilience) / 100.0
	#var b = float(player_data.vautonomy) / 100.0
	#shader_material.set_shader_param("emission_color", Vector3(r, g, b))
