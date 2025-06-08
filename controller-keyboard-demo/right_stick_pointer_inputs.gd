extends CharacterBody2D

@onready var parent = $".."
@onready var textField = $"../../input_text"

const speed = 32.0

@export var max_length = 205.0
@export var move_deadzone = 0.32
@export var angle = 0.0
@export var cursor_pos: Vector2

var move_input = Vector2.ZERO

var input_deadzone = 0.1

var move_direction = Vector2.ZERO

var block_right = false

var count = 0

func _ready() -> void:
	InputMap.action_set_deadzone("right_stick_down", input_deadzone)
	InputMap.action_set_deadzone("right_stick_left", input_deadzone)
	InputMap.action_set_deadzone("right_stick_right", input_deadzone)
	InputMap.action_set_deadzone("right_stick_up", input_deadzone)
		

func _process(delta: float):
	move_input.x = Input.get_action_strength("right_stick_right") - Input.get_action_strength("right_stick_left")
	move_input.y = Input.get_action_strength("right_stick_down") - Input.get_action_strength("right_stick_up")
	
	if Vector2.ZERO.distance_to(move_input) > move_deadzone*sqrt(2.0):
		angle = parent.global_position.angle_to_point(global_position)
		if global_position.distance_to(parent.global_position) >= max_length:
			global_position.x = parent.global_position.x + cos(angle) * max_length
			global_position.y = parent.global_position.y + sin(angle) * max_length
	else:
		global_position = lerp(global_position, parent.global_position, delta * 8)
	
func _physics_process(delta: float):
	move_and_collide(move_input * speed)

func blockRight():
	block_right = true

func unblockRight():
	block_right = false

func _on_right_input_area_exited(area: Area2D) -> void:
	var input_string = ""
	if !block_right:
		if area.is_in_group("U"):
			input_string = "U"
		elif area.is_in_group("I"):
			input_string = "I"
		elif area.is_in_group("O"):
			input_string = "O"
		elif area.is_in_group("P"):
			input_string = "P"
		elif area.is_in_group("G"):
			input_string = "G"
		elif area.is_in_group("H"):
			input_string = "H"
		elif area.is_in_group("J"):
			input_string = "J"
		elif area.is_in_group("K"):
			input_string = "K"
		elif area.is_in_group("L"):
			input_string = "L"
		elif area.is_in_group("V"):
			input_string = "V"
		elif area.is_in_group("B"):
			input_string = "B"
		elif area.is_in_group("N"):
			input_string = "N"
		elif area.is_in_group("M"):
			input_string = "M"
	blockRight()
	print(input_string)
	textField.text += input_string
	if area.is_in_group("block"):
			unblockRight()
