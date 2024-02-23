extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
@export var idle_cat = false
@export var Cat_box = false
var last_position
var Mouse_pos_start


# Called when the node enters the scene tree for the first time.
func _ready():
	Mouse_pos_start =$Cat/AnimatedSprite2D.position
	
func CatBox():
	$Cat/AnimatedSprite2D.play("CatBox")
	
func CatIdle():
	$Cat/AnimatedSprite2D.play("Idle")
	
func CatRun():
	$Cat/AnimatedSprite2D.play("Run")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if idle_cat == true:
		CatIdle()
	if Cat_box == true:
		CatBox()
	if idle_cat == false and Cat_box == false:
		CatRun()
		last_position = position[0]
		set_progress(get_progress() + runSpeed*delta)
		if position[0] < last_position:
			$Cat/AnimatedSprite2D.flip_v = true
		if position[0] > last_position:
			$Cat/AnimatedSprite2D.flip_v = false
		if progress_ratio == 1:
			while progress_ratio != 0:
					set_progress(get_progress() - runSpeed*delta)

