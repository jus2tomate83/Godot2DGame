extends PathFollow2D
var velocity = Vector2.ZERO
@export var runSpeed = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_progress(get_progress() + runSpeed*delta)
