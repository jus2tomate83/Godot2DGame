extends CharacterBody2D
var last_position
var walking_etats


	
func _process(delta):
	$AnimatedSprite2D.play("Droite")
	$Walk.play()

