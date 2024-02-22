extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
@export var idle_mouse = false
@export var Mouse_eat = false
var last_position
var Mouse_pos_start


# Called when the node enters the scene tree for the first time.
func _ready():
	Mouse_pos_start =$MouseSprite/AnimatedSprite2D.position
	


func MouseEat():
	$MouseSprite/AnimatedSprite2D.play("Eat")
	
func MouseIdle():
	$MouseSprite/AnimatedSprite2D.play("Idle")
	
func MouseRun():
	$MouseSprite/AnimatedSprite2D.play("Run")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if idle_mouse == true:
		MouseIdle()
	if Mouse_eat == true:
		MouseEat()
	if idle_mouse == false and Mouse_eat == false:
		MouseRun()
		last_position = position[0]
		set_progress(get_progress() + runSpeed*delta)
		if position[0] < last_position:
			$MouseSprite/AnimatedSprite2D.flip_v = true
		
		if position[0] > last_position:
			$MouseSprite/AnimatedSprite2D.flip_v = false
		if progress_ratio == 1:
			while progress_ratio != 0:
					set_progress(get_progress() - runSpeed*delta)

