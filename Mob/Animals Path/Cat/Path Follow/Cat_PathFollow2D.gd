extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
@export var idle_cat = false
var last_position
var Mouse_pos_start


# Called when the node enters the scene tree for the first time.
func _ready():
	Mouse_pos_start =$Cat/AnimatedSprite2D.position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if idle_cat == true:
		$Cat/AnimatedSprite2D.play("Idle")
	if idle_cat == false:
		$Cat/AnimatedSprite2D.play("Run")
		last_position = position[0]
		set_progress(get_progress() + runSpeed*delta)
		if position[0] < last_position:
			$Cat/AnimatedSprite2D.flip_v = true
		
		if position[0] > last_position:
			$Cat/AnimatedSprite2D.flip_v = false
		if progress_ratio == 1:
			while progress_ratio != 0:
					set_progress(get_progress() - runSpeed*delta)

