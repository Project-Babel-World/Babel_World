extends CharacterBody2D
class_name Villager

#@export var max_speed = 60.0
#@export var acceleration = 50


@onready var fsm = $FiniteStateMachine as FiniteStateMachine
#@onready var villager_wander_state = $FiniteStateMachine/VillagerWanderState as VillagerWanderState
@onready var timer = $Timer
@onready var villager_idle_state = $FiniteStateMachine/VillagerIdleState as VillagerIdleState

func _ready():
	fsm.state = villager_idle_state
	randomize()
	
func choose(arr):
	arr.shuffle()
	return arr.front()
	

func _on_timer_timeout():
	pass
	
