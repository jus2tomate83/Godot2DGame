extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	$AnimatedSprite2D.play("default")
	move_and_slide()