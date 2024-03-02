extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://UI/Menu/Menu.tscn")


func _on_volume_value_changed(value):
	pass # Replace with function body.


func _on_controle_pressed():
	get_tree().change_scene_to_file("res://UI/Controles/Controle.tscn")
