extends Area2D




func _on_body_entered(body):
	if body.name == "Player_Rabbit":
		#send message to inventory 
		queue_free()
