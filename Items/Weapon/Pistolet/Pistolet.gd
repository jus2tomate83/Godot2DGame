extends Node2D
var MousePos 
var angle
@onready var hand = get_node("res://Mob/Player/Player_Scène.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func rotate_gun():
	angle = $".".position
	angle = angle.angle()
	$".".look_at(get_global_mouse_position())
	$".".rotate(-angle)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_gun()
	
