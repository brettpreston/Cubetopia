extends Node3D

func _ready():
	var sub_viewport = $SubViewportContainer/SubViewport
	var texture = sub_viewport.get_texture()
	
	# Ensure the MeshInstance3D has a material
	var mesh_instance = $SubViewportContainer/SubViewport/Camera3D/MeshInstance3D
	if not mesh_instance.material_override:
		mesh_instance.material_override = StandardMaterial3D.new()
	
	# Assign the SubViewport texture to the material
	var material = mesh_instance.material_override
	material.albedo_texture = texture
