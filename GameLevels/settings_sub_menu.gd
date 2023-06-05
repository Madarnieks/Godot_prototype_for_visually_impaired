extends Control

func _ready():
	$MarginContainer/VBoxContainer/KeyBindings.grab_focus()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://GameLevels/main_menu.tscn")
