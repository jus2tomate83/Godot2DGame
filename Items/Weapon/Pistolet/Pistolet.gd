extends Node2D
@export var bullet : PackedScene
var RelodFinished = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func rotate_gun():
	look_at(get_global_mouse_position())
	
func shoot():
	var bullet = preload("res://Items/Bullet/PïstoletBullet.tscn").instantiate()
	if Input.is_action_just_pressed("CliqueDroit") and RelodFinished == true:
		RelodFinished = false
		get_parent().add_child(bullet)
		bullet.global_transform = $"Sprite2D".global_transform
		$ShootSound.play()
		$Timer.start()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_gun()
	shoot()



func _on_timer_timeout():
	$"Timer".stop()
	$"Chambre Reload".play()
	RelodFinished = true
