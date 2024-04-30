extends Area2D




func _on_body_entered(body):
	print('hello')
	print(body.name)

	if body.is_in_group() == "player_rabbit":
		print(body.name)
		#send message to inventory 
		queue_free()
		
		
