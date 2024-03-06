extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
var last_position
var walking
var mort = false
var MortFinished = false
var idle_mort_pos = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func positionMort():
	for i in range(idle_mort_pos):
				if i == 1:
					$"Pnj/AnimatedSprite2D".play("Idle Mort")
					$Pnj/Walk.stop()
				elif i == 2:
					$"Pnj/AnimatedSprite2D".play("Idle Mort")
					$"Pnj/AnimatedSprite2D".flip_h = true
					$Pnj/Walk.stop()
				else:
					$"Pnj/AnimatedSprite2D".play("Idle Mort")
					$Pnj/Walk.stop()


func _process(delta):
#PNJ VIVANT
	if mort == false:
		$"Pnj/AnimatedSprite2D".play("Droite")
		last_position = position[0]
		set_progress(get_progress() + runSpeed*delta)
		if position[0] < last_position:
			$Pnj/AnimatedSprite2D.flip_h = true
		if position[0] > last_position:
			$Pnj/AnimatedSprite2D.flip_h = false
		if progress_ratio == 1:
			while progress_ratio != 0:
					set_progress(get_progress() - runSpeed*delta)
					
	else :
		$"Pnj/AnimatedSprite2D".play("mort")
		
		MortFinished = false
		if MortFinished == false:
			positionMort()


func _on_pnj_area_entered(area):
	mort = true
