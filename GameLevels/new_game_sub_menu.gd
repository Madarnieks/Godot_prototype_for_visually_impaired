extends Control

func _ready():
	$MarginContainer/VBoxContainer/NavStick.grab_focus()

func _on_nav_stick_pressed():
	get_tree().change_scene_to_file("res://GameLevels/game_level_stage.tscn")

func _on_nav_menu_pressed():
	pass # Replace with function body.


func _on_direction_based_pressed():
	pass # Replace with function body.


func _on_surround_sound_pressed():
	pass # Replace with function body.

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://GameLevels/main_menu.tscn")
