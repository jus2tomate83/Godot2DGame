extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func Zoom():
	if Input.is_action_just_pressed("MouseDown"):
		$".".zoom = $".".zoom - Vector2(0.1,0.1)
	if Input.is_action_just_pressed("MouseUp"):
		$".".zoom = $".".zoom + Vector2(0.1,0.1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Zoom()
