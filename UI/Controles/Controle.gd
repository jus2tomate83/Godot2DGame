extends Label

@export var right : String = ""
@onready var Right = $Right
@onready var walk_sound = $"../AudioStreamPlayer2D"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_line_edit_text_submitted(new_text):
	right = Right.text
	print(right)
func _on_back_pressed():
	get_tree().change_scene_to_file("res://UI/Menu/Option_Menu.tscn")
	walk_sound.play()
