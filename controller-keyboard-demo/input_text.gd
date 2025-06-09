extends TextEdit

var block_right = true
var block_left = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("r1"):
		$".".text = ""
	if Input.is_action_just_pressed("B"):
		$".".text = $".".text.erase($".".text.length()-1, 1)
	
