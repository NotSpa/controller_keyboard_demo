extends TextEdit



func _ready() -> void:
	InputMap.action_set_deadzone("r2", 0.1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("A"):
		if $"..".matrixPos == 19:
			if $".".text.length() > 0:
				$".".text = $".".text.erase($".".text.length()-1, 1)
		elif $"..".matrixPos == 27 || $"..".matrixPos == 28:
			$".".text = $".".text + "_"
		elif $"..".matrixPos == 29:
			$".".text = ""
		else:
			$".".text = $".".text + $"..".matrix[$"..".matrixPos]
	if Input.is_action_just_pressed("r2"):
		$"../keys_layout/ButtonR2".self_modulate = Color(0.75,0.75,0.1,0.6)
	if Input.is_action_just_released("r2"):
		$".".text = ""
		$"../keys_layout/ButtonR2".self_modulate = Color(1,1,1)
	if Input.is_action_just_pressed("Y"):
		if $".".text.length() > 0:
			$".".text = $".".text.erase($".".text.length()-1, 1)
		$"../keys_layout/ButtonX2".self_modulate = Color(0.75,0,0.1,0.6)
	if Input.is_action_just_released("Y"):
		$"../keys_layout/ButtonX2".self_modulate = Color(1,1,1)
	if Input.is_action_just_pressed("X"):
		$".".text = $".".text + "_"
		$"../keys_layout/ButtonY2".self_modulate = Color(0,0.2,0.75,0.5)
	if Input.is_action_just_released("X"):
		$"../keys_layout/ButtonY2".self_modulate = Color(1,1,1)
