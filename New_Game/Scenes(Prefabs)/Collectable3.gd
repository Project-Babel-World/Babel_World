extends Area2D

@onready var sprite_2d = $AnimatedSprite2D

func _ready():
	sprite_2d.animation = "shirt"

func _on_body_entered(body):
	if body.name == "Player":
		queue_free()
		get_tree().call_group("question", "showingDress")

