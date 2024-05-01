extends Area2D




func _on_body_entered(body):
	print('Goodbye')
	print(body.name)
	if body.name == 'Player_Rabbit':
		queue_free()
		print('free')
	
