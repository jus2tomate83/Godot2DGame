extends CharacterBody2D

func _ready():
	pass

func walk_sound():
	pass

func _process(delta):
	$AnimatedSprite2D.play("Droite")

