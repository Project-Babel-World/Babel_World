extends Area2D



var  entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true
	# Replace with function body.



func _on_body_exited(body: PhysicsBody2D):
	entered = false
 # Replace with function body.
	
func  _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://Scenes(Prefabs)/Town_CorazonDeMar.tscn")


