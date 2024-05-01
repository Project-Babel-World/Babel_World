extends Node2D



func _enter_tree():
	return
	if Checkpoint.last_position:
		$Player.global_position = Checkpoint.last_position


