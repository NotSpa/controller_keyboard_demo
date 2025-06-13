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

@export var block_left = true

func _ready() -> void:
	InputMap.action_set_deadzone("left_stick_down", input_deadzone)
	InputMap.action_set_deadzone("left_stick_left", input_deadzone)
	InputMap.action_set_deadzone("left_stick_right", input_deadzone)
	InputMap.action_set_deadzone("left_stick_up", input_deadzone)
		

func _process(delta: float):
	move_input.x = Input.get_action_strength("left_stick_right") - Input.get_action_strength("left_stick_left")
	move_input.y = Input.get_action_strength("left_stick_down") - Input.get_action_strength("left_stick_up")
	
	if Vector2.ZERO.distance_to(move_input) > move_deadzone*sqrt(2.0):
		angle = parent.global_position.angle_to_point(global_position)
		if global_position.distance_to(parent.global_position) >= max_length:
			global_position.x = parent.global_position.x + cos(angle) * max_length
			global_position.y = parent.global_position.y + sin(angle) * max_length
	else:
		global_position = lerp(global_position, parent.global_position, delta * 8)
	
func _physics_process(_delta: float):
	move_and_collide(move_input * speed)

func blockLeft():
	block_left = true

func unblockLeft():
	block_left = false

func _on_left_input_area_exited(area: Area2D) -> void:
	var input_string = ""
	if !block_left:
		if area.is_in_group("Q"):
			input_string = "Q"
		elif area.is_in_group("W"):
			input_string = "W"
		elif area.is_in_group("E"):
			input_string = "E"
		elif area.is_in_group("R"):
			input_string = "R"
		elif area.is_in_group("T"):
			input_string = "T"
		elif area.is_in_group("Y"):
			input_string = "Y"
		elif area.is_in_group("A"):
			input_string = "A"
		elif area.is_in_group("S"):
			input_string = "S"
		elif area.is_in_group("D"):
			input_string = "D"
		elif area.is_in_group("F"):
			input_string = "F"
		elif area.is_in_group("Z"):
			input_string = "Z"
		elif area.is_in_group("X"):
			input_string = "X"
		elif area.is_in_group("C"):
			input_string = "C"
		blockLeft()
		textField.text += input_string

	if area.is_in_group("block"):
			unblockLeft()
