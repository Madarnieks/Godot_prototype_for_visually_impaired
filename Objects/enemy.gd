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

