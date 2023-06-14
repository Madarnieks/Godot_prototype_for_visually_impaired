extends CharacterBody2D

enum ENEMY_STATE {IDLE, WALK}


func _ready():
	velocity = Vector2(200, 200)

# underscore before a variable in a function's parameter will make it unusuable
func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		var normal = collision_info.get_normal()
		velocity = velocity.bounce(normal)
	if $Timer.time_left <= 0:
		$AudioStreamPlayer2D.pitch_scale = randf_range(0.7, 1.1)
		$AudioStreamPlayer2D.play()
		$Timer.start(randf_range(0.4, 1.8))

