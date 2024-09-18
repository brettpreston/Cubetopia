extends MeshInstance3D

func _ready():
	PlayerData.map_updated.connect(_on_map_updated)

# Update sphere position based on autoload variables
func _on_map_updated(item: String, value: int) -> void:
	match item:
		"economy":
			transform.origin.x = value
		"globality":
			transform.origin.z = value
		"tech":
			transform.origin.y = value
