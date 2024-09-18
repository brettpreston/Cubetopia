extends Node

signal map_updated(item, value)

# Autoload global variables
# Cube xyz
static var map : Dictionary = {
	"economy": 0,
	"globality": 0,
	"tech": 0,
	"state": 0,
	"resilience": 0,
	"autonomy": 0
}

func set_item(item: String, value: int) -> void:
	if not map.has(item):
		push_warning("Map item "+ item + " not found")
		return
	map[item] = value
	map_updated.emit(item, value)
	
func add_to_item(item: String, value: int) -> void:
	if not map.has(item):
		push_warning("Map item "+ item + " not found")
		return
	map[item] += value
	map_updated.emit(item, value)
