extends CharacterBody2D

@onready var parent = $".."

const speed = 32.0

@export var max_length = 205.0
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
	else:
		global_position = lerp(global_position, parent.global_position, delta * 8)
	
func _physics_process(_delta: float):
	move_and_collide(move_input * speed)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("N"):
		$"../Area2D/RadialMenuPart1".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("Z"):
		$"../Area2D2/RadialMenuPart2".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("Y"):
		$"../Area2D3/RadialMenuPart3".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("X"):
		$"../Area2D4/RadialMenuPart4".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("W"):
		$"../Area2D5/RadialMenuPart5".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("V"):
		$"../Area2D6/RadialMenuPart6".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("U"):
		$"../Area2D7/RadialMenuPart7".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("T"):
		$"../Area2D8/RadialMenuPart8".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("S"):
		$"../Area2D9/RadialMenuPart9".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("R"):
		$"../Area2D10/RadialMenuPart10".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("Q"):
		$"../Area2D11/RadialMenuPart11".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("P"):
		$"../Area2D12/RadialMenuPart12".self_modulate = Color(0,0,1,0.5)
	elif area.is_in_group("O"):
		$"../Area2D13/RadialMenuPart13".self_modulate = Color(0,0,1,0.5)

func _on_area_2d_area_exited(area: Area2D) -> void:
	if area.is_in_group("N"):
		$"../Area2D/RadialMenuPart1".self_modulate = Color(1,1,1)
	elif area.is_in_group("Z"):
		$"../Area2D2/RadialMenuPart2".self_modulate = Color(1,1,1)
	elif area.is_in_group("Y"):
		$"../Area2D3/RadialMenuPart3".self_modulate = Color(1,1,1)
	elif area.is_in_group("X"):
		$"../Area2D4/RadialMenuPart4".self_modulate = Color(1,1,1)
	elif area.is_in_group("W"):
		$"../Area2D5/RadialMenuPart5".self_modulate = Color(1,1,1)
	elif area.is_in_group("V"):
		$"../Area2D6/RadialMenuPart6".self_modulate = Color(1,1,1)
	elif area.is_in_group("U"):
		$"../Area2D7/RadialMenuPart7".self_modulate = Color(1,1,1)
	elif area.is_in_group("T"):
		$"../Area2D8/RadialMenuPart8".self_modulate = Color(1,1,1)
	elif area.is_in_group("S"):
		$"../Area2D9/RadialMenuPart9".self_modulate = Color(1,1,1)
	elif area.is_in_group("R"):
		$"../Area2D10/RadialMenuPart10".self_modulate = Color(1,1,1)
	elif area.is_in_group("Q"):
		$"../Area2D11/RadialMenuPart11".self_modulate = Color(1,1,1)
	elif area.is_in_group("P"):
		$"../Area2D12/RadialMenuPart12".self_modulate = Color(1,1,1)
	elif area.is_in_group("O"):
		$"../Area2D13/RadialMenuPart13".self_modulate = Color(1,1,1)
