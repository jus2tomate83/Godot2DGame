extends CharacterBody2D
@export var speed = 200
var direction = 1

@onready var path_follow = $Path2D/PathFollow2D

func _physics_process(delta):
	path_follow.offset += speed * delta * direction

	if path_follow.unit_offset >= 1 and direction == 1:
		direction = -1
	elif path_follow.unit_offset <= 0 and direction == -1:
		direction = 1

	position = path_follow.position
