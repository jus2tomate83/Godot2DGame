extends Label
@export var avancer := str("") 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass






func _on_line_edit_text_submitted(new_text):
	avancer = $LineEdit.text


func _on_back_pressed():
	get_tree().change_scene_to_file("res://UI/Menu/Option_Menu.tscn")


func _on_line_edit_text_changed(new_text):
	avancer = $LineEdit.text
