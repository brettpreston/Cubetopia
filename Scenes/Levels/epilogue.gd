extends Label3D



func _ready():
	if PlayerData.map.economy <= 0:
		self.text="A"

func update_visibility():
	if PlayerData.map.economy <= 0:
		self.show()		
	else:
		self.queue_free()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
