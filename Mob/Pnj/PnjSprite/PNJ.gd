extends CharacterBody2D
var last_position
var walking_etats

func walking(walking_etats):
	if $AnimatedSprite2D.frame_changed:
		return walking_etats = true
	else: return walking_etats = false
	
func _process(delta):
	$AnimatedSprite2D.play("Droite")
	if(walking): $Walk.play(0)
		else: $Walk.stop()

