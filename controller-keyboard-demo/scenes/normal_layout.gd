extends Node2D

@onready var id = get_node("/root/Id")

var matrix: Array[String]
var pos = [0, 0]
var matrixPos = 0

@onready var pointer = $keys_layout/keyboard_pointer2
@onready var startPosX = $keys_layout/keyboard_pointer2.global_position.x
@onready var startPosY = $keys_layout/keyboard_pointer2.global_position.y

@onready var rect = $keys_layout/key_frame

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	matrix = ["Q","W","E","R","T","Y","U","I","O","P","A","S","D","F","G","H","J","K","L","DEL","Z","X","C","V","B","N","M","Space","Space","NEXT"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("up"):
		moveUp()
	if Input.is_action_just_pressed("down"):
		moveDown()
	if Input.is_action_just_pressed("left"):
		moveLeft()
	if Input.is_action_just_pressed("right"):
		moveRight()
	
	pointer.global_position.x = startPosX + pos[0] * rect.texture.get_height() * rect.scale.x
	pointer.global_position.y = startPosY + pos[1] * rect.texture.get_width() * rect.scale.y
	
func moveUp():
	pos[1] = (pos[1] - 1 + 3) % 3
	matrixPos = ((pos[1] * 10) + pos[0])

func moveDown():
	pos[1] = (pos[1] + 1) % 3
	matrixPos = pos[1] * 10 + pos[0]

func moveRight():
	pos[0] = (pos[0] + 1) % 10
	matrixPos = pos[1] * 10 + pos[0]

func moveLeft():
	pos[0] = (pos[0] - 1 + 10)  % 10
	matrixPos = pos[1] * 10 + pos[0]
