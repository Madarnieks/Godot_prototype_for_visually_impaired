extends Sprite2D

func _physics_process(delta):
	if $Timer.time_left <= 0:
		$AudioStreamPlayer2D.pitch_scale = randf_range(0.9, 1.1)
		$AudioStreamPlayer2D.play()
		$Timer.start(randi_range(9, 15))
