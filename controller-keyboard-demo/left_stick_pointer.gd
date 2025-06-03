extends CharacterBody2D

@onready var parent = $".."

const speed = 50.0

@export var max_length = 200.0
@export var move_deadzone = 0.32
@export var angle = 0.0
@export var cursor_pos: Vector2

var move_input = Vector2.ZERO

var input_deadzone = 0.1

var move_direction = Vector2.ZERO

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
			cursor_pos = global_position
	else:
		global_position = lerp(global_position, parent.global_position, delta * 10)
		cursor_pos = global_position
	
func _physics_process(delta: float):
	move_and_collide(move_input * speed)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Q"):
		$"../Area2D/RadialMenuPart1".self_modulate = Color(0,0,1,0.5)
		print("Q")
	elif area.is_in_group("W"):
		$"../Area2D2/RadialMenuPart2".self_modulate = Color(0,0,1,0.5)
		print("W")
	elif area.is_in_group("E"):
		$"../Area2D3/RadialMenuPart3".self_modulate = Color(0,0,1,0.5)
		print("E")
	elif area.is_in_group("R"):
		$"../Area2D4/RadialMenuPart4".self_modulate = Color(0,0,1,0.5)
		print("R")
	elif area.is_in_group("T"):
		$"../Area2D5/RadialMenuPart5".self_modulate = Color(0,0,1,0.5)
		print("T")
	elif area.is_in_group("Y"):
		$"../Area2D6/RadialMenuPart6".self_modulate = Color(0,0,1,0.5)
		print("Y")
	elif area.is_in_group("A"):
		$"../Area2D7/RadialMenuPart8".self_modulate = Color(0,0,1,0.5)
		print("A")
	elif area.is_in_group("S"):
		$"../Area2D8/RadialMenuPart7".self_modulate = Color(0,0,1,0.5)
		print("S")
	elif area.is_in_group("D"):
		$"../Area2D9/RadialMenuPart9".self_modulate = Color(0,0,1,0.5)
		print("D")
	elif area.is_in_group("F"):
		$"../Area2D10/RadialMenuPart10".self_modulate = Color(0,0,1,0.5)
		print("F")
	elif area.is_in_group("Z"):
		$"../Area2D11/RadialMenuPart11".self_modulate = Color(0,0,1,0.5)
		print("Z")
	elif area.is_in_group("X"):
		$"../Area2D12/RadialMenuPart12".self_modulate = Color(0,0,1,0.5)
		print("X")
	elif area.is_in_group("C"):
		$"../Area2D13/RadialMenuPart13".self_modulate = Color(0,0,1,0.5)
		print("C")


func _on_area_2d_area_exited(area: Area2D) -> void:
	if area.is_in_group("Q"):
		$"../Area2D/RadialMenuPart1".self_modulate = Color(1,1,1)
	elif area.is_in_group("W"):
		$"../Area2D2/RadialMenuPart2".self_modulate = Color(1,1,1)
	elif area.is_in_group("E"):
		$"../Area2D3/RadialMenuPart3".self_modulate = Color(1,1,1)
	elif area.is_in_group("R"):
		$"../Area2D4/RadialMenuPart4".self_modulate = Color(1,1,1)
	elif area.is_in_group("T"):
		$"../Area2D5/RadialMenuPart5".self_modulate = Color(1,1,1)
	elif area.is_in_group("Y"):
		$"../Area2D6/RadialMenuPart6".self_modulate = Color(1,1,1)
	elif area.is_in_group("A"):
		$"../Area2D7/RadialMenuPart8".self_modulate = Color(1,1,1)
	elif area.is_in_group("S"):
		$"../Area2D8/RadialMenuPart7".self_modulate = Color(1,1,1)
	elif area.is_in_group("D"):
		$"../Area2D9/RadialMenuPart9".self_modulate = Color(1,1,1)
	elif area.is_in_group("F"):
		$"../Area2D10/RadialMenuPart10".self_modulate = Color(1,1,1)
	elif area.is_in_group("Z"):
		$"../Area2D11/RadialMenuPart11".self_modulate = Color(1,1,1)
	elif area.is_in_group("X"):
		$"../Area2D12/RadialMenuPart12".self_modulate = Color(1,1,1)
	elif area.is_in_group("C"):
		$"../Area2D13/RadialMenuPart13".self_modulate = Color(1,1,1)
