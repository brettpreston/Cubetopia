extends Node3D

func _ready():
	update_visibility()

func update_visibility():
	if player_data.mapGlobality < 0:
		self.show()
	else:
		self.queue_free()