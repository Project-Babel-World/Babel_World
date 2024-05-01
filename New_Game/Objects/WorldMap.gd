extends Node2D

@onready var player = $Player

var lerp_speed = 0.2
var lerp_progress = 0.0
var completed_movement = true
var lerp_threshold = 0.5
@onready var curr_level = $LevelHolder/Town_CorazonDeMar

func _ready():
	player.get_node("Sprite2D").animation = "default"
	
func _process(delta):
	var target : Node2D
	if player.get_node("Sprite2D").animation == "running": pass
	elif Input.is_action_pressed("ui_up"):
		if curr_level.up:
			target = curr_level.up
	elif Input.is_action_pressed("ui_down"):
		if curr_level.down: 
			target = curr_level.down
	elif Input.is_action_pressed("ui_right"):
		if curr_level.right: 
			target = curr_level.right
	elif Input.is_action_pressed("ui_left"):
		if curr_level.left: 
			target = curr_level.left
	
	if Input.is_action_pressed("jump") and curr_level.isLevel:
		player.get_node("Sprite2D").animation = "jumping"
		await get_tree().create_timer(0.4).timeout
		get_tree().change_scene_to_file("res://Scenes(Prefabs)/" + curr_level.name + ".tscn")
	
	if target:
		completed_movement = false
		player.get_node("Sprite2D").animation =  "running"
		lerp_progress = 0.0
		while lerp_progress < 1.0:
			lerp_progress += lerp_speed * delta
			if lerp_progress >0.02: lerp_progress = 0.02
			if lerp_progress <0.001: lerp_progress = 0.001
			#lerp_progress.clamp(lerp_progress, 0.0, 1.0)
			player.position = player.position.lerp(target.global_position, lerp_progress)
			if player.position.distance_to(target.global_position) < lerp_threshold:
				print('made it')
				break
			await get_tree().create_timer(delta).timeout
		player.position = target.global_position
		curr_level = target
		player.get_node("Sprite2D").animation =  "default"
		completed_movement = true
