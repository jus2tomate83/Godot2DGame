extends CharacterBody2D

const SPEED = 250
const JUMP_VELOCITY = -200
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	gravity = 0

func equip():
	var pistol = preload("res://Items/Weapon/Pistolet/Pistolet.tscn").instantiate()
	if Input.is_action_just_pressed('Equiper'):
		$"AnimatedSprite2D".add_child(pistol)
		print("Equipé !")
	

func _physics_process(delta):
	equip()
	var direction = Input.get_axis("gauche", "droite")
	print(gravity)
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	if velocity.length() > 0 and is_on_floor():
		$AnimatedSprite2D.flip_h = velocity.x < 0
		$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("idle")
