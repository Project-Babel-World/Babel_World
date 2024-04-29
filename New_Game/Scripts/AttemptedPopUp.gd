extends Area2D

var entered = false


func _on_body_entered(body):
	entered = true
	pass # Replace with function body.


func _on_body_exited(body):
	entered = false
	pass # Replace with function body.
	
func  _process(delta):
	if entered == true:
		print("hello")
