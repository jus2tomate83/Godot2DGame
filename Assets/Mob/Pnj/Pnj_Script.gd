extends CharacterBody2D
@export var speed = 40
var direction = 1

@onready var path_follow = $Path2D/PathFollow2D

func _physics_process(delta):
	var progress = path_follow.get_progress()
	progress += speed * delta * direction

	if progress >= 1 and direction == 1:
		direction = -1
	elif progress <= 0 and direction == -1:
		direction = 1

	path_follow.set_progress(progress)
	position = path_follow.position
