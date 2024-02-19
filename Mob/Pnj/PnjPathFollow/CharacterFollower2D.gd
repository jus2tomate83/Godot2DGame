extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
var last_position
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	last_position = position[0]
	set_progress(get_progress() + runSpeed*delta)
	if position[0] < last_position:
			$Pnj/AnimatedSprite2D.flip_h = true
	if position[0] > last_position:
		$Pnj/AnimatedSprite2D.flip_h = false
	if progress_ratio == 1:
		while progress_ratio != 0:
				set_progress(get_progress() - runSpeed*delta)




