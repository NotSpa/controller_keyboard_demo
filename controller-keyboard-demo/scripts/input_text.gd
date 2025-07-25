extends TextEdit

var block_right = true
var block_left = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	InputMap.action_set_deadzone("r2", 0.1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_released("r2"):
		$".".text = ""
	if Input.is_action_just_pressed("Y"):
		if $".".text.length() > 0:
			$".".text = $".".text.erase($".".text.length()-1, 1)
		$"../Del".color = Color(0.75,0,0.1,0.6)
	if Input.is_action_just_released("Y"):
		$"../Del".color = Color(1,1,1)
	if Input.is_action_just_pressed("X"):
		$".".text = $".".text + "_"
		$"../Spacebar".color = Color(0,0.2,0.75,0.5)
	if Input.is_action_just_released("X"):
		$"../Spacebar".color = Color(1,1,1)
