extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Main/Main.tscn")


func _on_option_pressed():
	get_tree().change_scene_to_file("res://UI/Menu/Option_Menu.tscn")


func _on_quit_pressed():
	get_tree().quit()
