extends Button
var start = preload("res://UI/Start/Start.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	var instance = start.instantiate()
	add_child(instance)
	print("Start ...")
