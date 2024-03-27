extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -850.0
@onready var sprite_2d = $Sprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func respawn(x, y):
	position.x = x
	position.y = y
	
func _physics_process(delta): # runs at 6fps ? 
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation = "jumping"
	elif velocity.x > 1 || velocity.x < -1:
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation ="default"
		


	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 20)

	move_and_slide()
	var isLeft = velocity.x < 0
	var moving = velocity.x > 0 or velocity.x <0
	if moving: 
		sprite_2d.flip_h = isLeft
		
	# Handle fall
	if (position.y > 3000):
		respawn(0, 500)

