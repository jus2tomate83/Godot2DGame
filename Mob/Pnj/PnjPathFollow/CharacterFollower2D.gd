extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
var last_position
var tel_pos_start
var tel_pos_start_pos
# Called when the node enters the scene tree for the first time.
func _ready():
	tel_pos_start = get_node(".")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	last_position = position[0]
	set_progress(get_progress() + runSpeed*delta)
	if position[0] < last_position:
		$Pnj/AnimatedSprite2D.flip_h = true
		$Pnj/AnimatedSprite2D/Telephone.position = Vector2(-6,2.5)


	if position[0] > last_position:
		$Pnj/AnimatedSprite2D.flip_h = false
		$Pnj/AnimatedSprite2D/Telephone.position = Vector2(tel_pos_start)
	if progress_ratio == 1:
		while progress_ratio != 0:
				set_progress(get_progress() - runSpeed*delta)




