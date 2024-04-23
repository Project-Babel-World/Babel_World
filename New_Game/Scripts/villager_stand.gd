extends Villager

#@onready var fsm = $FiniteStateMachine as FiniteStateMachine
@onready var villager_action_state = $FiniteStateMachine/VillagerActionState as VillagerActionState
#@onready var timer = $Timer
#@onready var villager_idle_state = $FiniteStateMachine/VillagerIdleState as VillagerIdleState

func _on_timer_timeout():
	timer.wait_time = choose([4,5,6])
	fsm.change_state(choose([villager_action_state, villager_idle_state]))
