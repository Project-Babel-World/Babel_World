extends State

@export var animator: AnimatedSprite2D

func _enter_state():
	animator.play('attention')
func _exit_state():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
