extends Control

func _ready():
	$MarginContainer/VBoxContainer/NewGame.grab_focus()
	
func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://GameLevels/new_game_sub_menu.tscn")

func _on_settings_pressed():
	get_tree().change_scene_to_file("res://GameLevels/settings_sub_menu.tscn")

func _on_quit_pressed():
	get_tree().quit()


func _on_new_game_focus_entered():
	$MarginContainer/VBoxContainer/NewGameSound.play()


func _on_settings_focus_entered():
	$MarginContainer/VBoxContainer/SettingsSound.play()


func _on_quit_focus_entered():
	$MarginContainer/VBoxContainer/QuitSound.play()
