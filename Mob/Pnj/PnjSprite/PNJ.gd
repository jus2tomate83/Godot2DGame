extends CharacterBody2D

func _process(delta):
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
		
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
