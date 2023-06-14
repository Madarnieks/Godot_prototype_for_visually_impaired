extends CharacterBody2D

@export var move_speed : float = 200
var direction : Vector2 = Vector2()

func _physics_process(_delta): #underscore before the variable means it won't be used
	#Checks for input
	velocity = Vector2()
	#Order is important: first calculate the x-axis and then the y-axis
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		direction = Vector2(0, -1)
	if Input.is_action_pressed("down"):
		velocity.y +=1
		direction = Vector2(0, 1)
	if Input.is_action_pressed("right"):
		velocity.x += 1
		direction = Vector2(-1, 0)
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		direction = Vector2(1, 0)
	#print(velocity)
	velocity = velocity.normalized() * move_speed
	move_and_slide()
	if velocity.length() > 0:
		if $Timer.time_left <= 0:
			$AudioStreamPlayer2D.pitch_scale = randf_range(0.7, 1.1)
			$AudioStreamPlayer2D.play()
			$Timer.start(0.4)
	
	#Calculate velocity
	#velocity = input_direction * move_speed
	#Move player object based on velocity

	
