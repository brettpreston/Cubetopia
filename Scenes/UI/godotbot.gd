extends Node2D
var next_scene=load("res://Scenes/MainMenu.tscn")
# Function to handle the finished signal
func _on_VideoStreamPlayer_finished():
	# Change to the new scene
	get_tree().change_scene_to_packed(next_scene)

# Connect the signal in the _ready function
func _ready():
	$VideoStreamPlayer.connect("finished", Callable(self, "_on_VideoStreamPlayer_finished"))
