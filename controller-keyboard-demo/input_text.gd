extends TextEdit

var block_right = true
var block_left = true

var textField
var string_array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func boolToString(b: bool) -> String:
	if b == true:
		return "true"
	else:
		return "false"

func blockLeft():
	block_left = true

func unblockLeft():
	block_left = false

func blockRight():
	block_right = true

func unblockRight():
	block_right = false
