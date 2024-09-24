extends MultiMeshInstance3D

# Constants for height limits
const WATER_HEIGHT = 10.0
const MOUNTAIN_HEIGHT = 50.0
const terrain_width = 50
const terrain_depth = 10

# Array of tree meshes
var tree_meshes = []

func _ready():
	# Load your tree meshes
	tree_meshes.append(load("res://Assets/Models/Props/Nature/Trees/Nature_tree_1.glb"))
	tree_meshes.append(load("res://Assets/Models/Props/Nature/Trees/Nature_tree_2.glb"))
	tree_meshes.append(load("res://Assets/Models/Props/Nature/Trees/Nature_tree_3.glb"))
	tree_meshes.append(load("res://Assets/Models/Props/Nature/Trees/Nature_tree_4.glb"))
	tree_meshes.append(load("res://Assets/Models/Props/Nature/Trees/Nature_tree_5.glb"))

	# Set up MultiMesh
	var multimesh = MultiMesh.new()
	multimesh.instance_count = 100  # Set the number of instances
	multimesh.mesh = tree_meshes[0]  # Assign the first tree mesh initially
	self.multimesh = multimesh

	# Distribute trees
	for i in range(multimesh.instance_count):
		var transform = Transform3D()
		var position = get_random_position()
		transform.origin = position
		multimesh.set_instance_transform(i, transform)
		multimesh.set_instance_custom_data(i, Color(1, 1, 1, 1))  # Optional: Set custom data for each instance

func get_random_position():
	var x = randf() * terrain_width
	var z = randf() * terrain_depth
	var y = get_terrain_height(x, z)
	while y < WATER_HEIGHT or y > MOUNTAIN_HEIGHT:
		x = randf() * terrain_width
		z = randf() * terrain_depth
		y = get_terrain_height(x, z)
	return Vector3(x, y, z)

func get_terrain_height(x, z):
	# Implement this function to return the height of the terrain at (x, z)
	return 20.0  # Placeholder value
