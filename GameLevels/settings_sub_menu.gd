extends Control

func _ready():
	$MarginContainer/VBoxContainer/KeyBindings.grab_focus()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://GameLevels/main_menu.tscn")


func _on_key_bindings_pressed():
	pass # Replace with function body.


func _on_volume_pressed():
	pass # Replace with function body.


func _on_back_focus_entered():
	$MarginContainer/VBoxContainer/SoundBack.play()


func _on_volume_focus_entered():
	$MarginContainer/VBoxContainer/SoundVolume.play()


func _on_key_bindings_focus_entered():
	$MarginContainer/VBoxContainer/SoundKeyBindings.play()
