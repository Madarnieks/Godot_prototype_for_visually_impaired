@export var LevelSize := Vector2(150, 150)
@export var RoomsMax := 50
@export var RoomSize := Vector2(10, 20)

@onready var CameraObject: Camera2D = $Camera2D


func _ready() -> void:
	_setup_camera()
	_generate()

func _generate() -> void:
	level.clear()
	for vector in _generate_data():
		level.set_cell(0, vector, 0, Vector2i.ZERO, 0)

PlaceWalls()
PlaceEnemies()
PlaceCoins()
PlacePlayerCharacter()
