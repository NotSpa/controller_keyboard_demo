extends CharacterBody2D

@onready var parent = $".."

const speed = 100.0

@export var max_length = 200.0
@export var move_deadzone = 0.32
@export var angle = 0.0
@export var cursor_pos: Vector2

var move_input = Vector2.ZERO

var input_deadzone = 0.1

var move_direction = Vector2.ZERO

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
			cursor_pos = global_position
	else:
		global_position = lerp(global_position, parent.global_position, delta * 20)
		cursor_pos = global_position
	
func _physics_process(delta: float):
	move_and_collide(move_input * speed)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("U"):
		print("U")
	elif area.is_in_group("P"):
		print("P")
	elif area.is_in_group("G"):
		print("G")
	elif area.is_in_group("H"):
		print("H")
	elif area.is_in_group("J"):
		print("J")
	elif area.is_in_group("K"):
		print("K")
	elif area.is_in_group("L"):
		print("L")
	elif area.is_in_group("V"):
		print("V")
	elif area.is_in_group("B"):
		print("B")
	elif area.is_in_group("N"):
		print("N")
	elif area.is_in_group("M"):
		print("M")
	elif area.is_in_group("I"):
		print("I")
	elif area.is_in_group("O"):
		print("O")
	elif area.is_in_group("submit"):
		print("submit")
