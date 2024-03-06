extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
@export var idle_cat = false
@export var Cat_box = false
var last_position
var Mouse_pos_start
var hit = false
var idle_mort_pos = 2
var MortFinished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	Mouse_pos_start =$Cat/AnimatedSprite2D.position
	
func CatBox():
	$Cat/AnimatedSprite2D.play("CatBox")
	
func CatIdle():
	$Cat/AnimatedSprite2D.play("Idle")
	
func CatRun():
	$Cat/AnimatedSprite2D.play("Run")
	
func positionMort():
	for i in range(idle_mort_pos):
				if i == 1:
					$"Cat/AnimatedSprite2D".play("Idle Die")
					#$Pnj/Walk.stop()
				elif i == 2:
					$"Cat/AnimatedSprite2D".play("Idle Die")
					$"Cat/AnimatedSprite2D".flip_h = true
					#$Pnj/Walk.stop()
				else:
					$"Cat/AnimatedSprite2D".play("Idle Die")
					#$Pnj/Walk.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if hit == false:
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
	else:
		$Cat/AnimatedSprite2D.play("Die ")
		MortFinished = false
		if MortFinished == false:
			positionMort()



func _on_cat_area_entered(area):
	hit = true
