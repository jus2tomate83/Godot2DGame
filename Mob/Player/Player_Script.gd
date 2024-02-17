extends CharacterBody2D
@export var SPEED = 200

var screen_size = get_viewport_rect().size
var direction = Vector2.ZERO
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
const JUMP_VELOCITY = -200



func _physics_process(delta):
	var direction = Input.get_axis("gauche", "droite")
	
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	if velocity.length() > 0 and is_on_floor() :
		$AnimatedSprite2D.flip_h= velocity.x < 0

		$AnimatedSprite2D.play("run")
	else :
		$AnimatedSprite2D.play("idle")
	if velocity.x !=0 :
