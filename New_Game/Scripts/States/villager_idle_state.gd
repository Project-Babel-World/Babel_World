extends State
class_name VillagerIdleState

@export var actor: Villager
@export var animator: AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _enter_state():
	animator.play('idle')
func _exit_state():
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
