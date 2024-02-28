class_name VillagerWanderState
extends State


@export var actor: Villager
@export var animator: AnimatedSprite2D

var direction = Vector2.LEFT

func _ready():
	set_physics_process(false)

func _enter_state()->void:
	set_physics_process(true)
	animator.play("move")
	if actor.velocity ==Vector2.ZERO:
		actor.velocity = direction * actor.max_speed	
	
func _exit_state()->void:
	set_physics_process(false)
	
func _physics_process(delta):
	animator.scale.x = sign(actor.velocity.x)
	if animator.scale.x ==0: animator.scale.x = 1
	var collision = actor.move_and_collide(actor.velocity * delta)
	if collision:
		var bounce_velocity = actor.velocity.bounce(collision.get_normal())
		actor.velocity = bounce_velocity
		
