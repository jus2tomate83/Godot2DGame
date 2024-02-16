extends CharacterBody2D


const SPEED = 300.0



var speed: float = 200
var new_direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("droite", "gauche", "haut", "bas")
	var velocity = input_direction * speed
	move_and_slide()

	if input_direction != Vector2.ZERO:
		new_direction = input_direction
		var animation = "run" + get_direction(new_direction)
		$AnimationPlayer.play(animation)
	else:
		var animation = "idle" + get_direction(new_direction)
		$AnimationPlayer.play(animation)

func get_direction(dir: Vector2) -> String:
	# Implement logic to determine animation direction (e.g., "up", "down", etc.)
	# Return the appropriate animation name
	return "run"  # Replace with your logic
