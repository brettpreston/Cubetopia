extends Area3D

var next_scene=load("res://Scenes/Levels/11Global.tscn")
var autoload1 = load("res://Autoload1.gd")

func _on_body_entered(body):
	if "Player" in body.name:
		TransitionScene.fadeout()
		await get_tree().create_timer(0.25).timeout
		get_tree().change_scene_to_packed(next_scene)
