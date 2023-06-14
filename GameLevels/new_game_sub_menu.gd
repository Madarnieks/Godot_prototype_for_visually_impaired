extends Control

func _ready():
	$MarginContainer/VBoxContainer/NavStick.grab_focus()

func _on_nav_stick_pressed():
	get_tree().change_scene_to_file("res://GameLevels/game_level_stage1.tscn")

func _on_nav_menu_pressed():
	get_tree().change_scene_to_file("res://GameLevels/game_level_stage1.tscn")


func _on_direction_based_pressed():
	get_tree().change_scene_to_file("res://GameLevels/game_level_stage1.tscn")


func _on_surround_sound_pressed():
	get_tree().change_scene_to_file("res://GameLevels/game_level_stage1.tscn")

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://GameLevels/main_menu.tscn")


func _on_nav_stick_focus_entered():
	$MarginContainer/VBoxContainer/SoundNavStick.play()


func _on_nav_menu_focus_entered():
	$MarginContainer/VBoxContainer/SoundNavMenu.play()


func _on_direction_based_focus_entered():
	$MarginContainer/VBoxContainer/SoundDirectionBased.play()


func _on_surround_sound_focus_entered():
	$MarginContainer/VBoxContainer/SoundSurroundSound.play()


func _on_back_button_focus_entered():
	$MarginContainer/VBoxContainer/SoundBackButton.play()
