extends CharacterBody2D

const speed = 100.0

var move_input = Vector2.ZERO

var input_deadzone = 0.1
var move_deadzone = 0.32

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
		move_direction = move_input.normalized()
	else:
		move_direction = Vector2.ZERO
	
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
