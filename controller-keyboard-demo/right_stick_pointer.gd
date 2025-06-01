extends CharacterBody2D

const speed = 100.0

var move_input = Vector2.ZERO

var input_deadzone = 0.1
var move_deadzone = 0.32

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
		move_direction = move_input.normalized()
	else:
		move_direction = Vector2.ZERO
	
func _physics_process(delta: float):
	move_and_collide(move_input * speed)
