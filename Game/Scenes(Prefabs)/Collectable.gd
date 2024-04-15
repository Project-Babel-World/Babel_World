extends Area2D



func _on_body_entered(body):
	print(body.name)
	if body.name == "Player":
		queue_free()
	'''
	print("Player entered!")
	print(body.name)

	if body.name == "Character":
		queue_free()
		'''

