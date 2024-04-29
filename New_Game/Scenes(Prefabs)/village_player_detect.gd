extends Area2D

@onready var fsm = $"../FiniteStateMachine" as FiniteStateMachine
@onready var idle_state = $"../FiniteStateMachine/VillagerIdleState" as VillagerIdleState
@onready var detected_state = $"../FiniteStateMachine/PlayerDetectedState"
# This function is called when a physics body enters the detection area

func _on_body_entered(body):
	if body.name == "Player":
	# Perform actions when the player enters the area
		queue_free()
		fsm.change_state(detected_state)


func _on_body_exited(body):
	if body.name == "Player":
		await get_tree().create_timer(.5).timeout
		# testing out delaying a function, makes it so villager doesnt immediatly swap to idle
		fsm.change_state(idle_state)
	pass # Replace with function body.
