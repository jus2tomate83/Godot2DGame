extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	velocity = Vector2.ZERO
	if velocity.x > 0:
		$AnimatedSprite2D.play("Droite")
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h
	move_and_slide()
