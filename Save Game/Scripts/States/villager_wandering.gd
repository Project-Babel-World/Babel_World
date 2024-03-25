extends Villager

@export var max_speed = 60.0
@export var acceleration = 50

@onready var villager_wander_state = $FiniteStateMachine/VillagerWanderState as VillagerWanderState

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

'''
func _physics_process(delta): # runs at 6fps ? 
	# Add the gravity.
	pass
	if not is_on_floor():
		pass
		velocity.y += gravity * delta
	
'''
func _on_timer_timeout():
	timer.wait_time = choose([4,5,6])
	fsm.change_state(choose([villager_wander_state, villager_idle_state]))
