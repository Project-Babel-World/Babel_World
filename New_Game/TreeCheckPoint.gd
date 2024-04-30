extends Area2D

var texture1 = load("res://Game Pack Run & jump/PNG/Plants/plant3.png")
var texture2 = load("res://Game Pack Run & jump/PNG/Plants/flower.png")

func _on_body_entered(body):
	if (body.name == "Player"):
		Checkpoint.last_position[0] = global_position.x
		Checkpoint.last_position[1] = global_position.y
		$Sprite2D.set_texture(texture2)
	else:
		print(typeof(Checkpoint.last_position))
		$Sprite2D.set_texture(texture1)

	
