extends TextEdit

@export var disable_left = false
@export var disable_right = false

@export var input_string: String

var past_first = true

var block_right = false
var block_left = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	disable_all_left()
	disable_all_right()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if past_first:
		enable_all_left()
		enable_all_right()
		past_first = false
		input_string = ""

	$".".set("text", input_string)
	$"../Label".set("text", boolToString(block_left) + ", " + boolToString(block_right))

func boolToString(b: bool) -> String:
	if b:
		return "true"
	return "false"

func blockLeft():
	block_left != block_left

func blockRight():
	block_right != block_right

func enable_all_left() -> void:
	$"../left_radial_menu/area_1/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_2/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_3/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_4/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_5/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_6/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_7/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_8/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_9/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_10/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_11/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_12/CollisionShape2D".set_deferred("disabled", false)
	$"../left_radial_menu/area_13/CollisionShape2D".set_deferred("disabled", false)

func enable_all_right() -> void:
	$"../right_radial_menu/area_1/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_2/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_3/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_4/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_5/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_6/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_7/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_8/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_9/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_10/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_11/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_12/CollisionShape2D".set_deferred("disabled", false)
	$"../right_radial_menu/area_13/CollisionShape2D".set_deferred("disabled", false)

func disable_all_left() -> void:
	$"../left_radial_menu/area_1/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_2/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_3/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_4/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_5/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_6/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_7/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_8/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_9/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_10/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_11/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_12/CollisionShape2D".set_deferred("disabled", true)
	$"../left_radial_menu/area_13/CollisionShape2D".set_deferred("disabled", true)

func disable_all_right() -> void:
	$"../right_radial_menu/area_1/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_2/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_3/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_4/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_5/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_6/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_7/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_8/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_9/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_10/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_11/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_12/CollisionShape2D".set_deferred("disabled", true)
	$"../right_radial_menu/area_13/CollisionShape2D".set_deferred("disabled", true)

func _on_area_14_area_entered_right(area: Area2D) -> void:
	#enable_all_right()
	blockRight()
	print("t1")

func _on_area_14_area_entered_left(area: Area2D) -> void:
	#enable_all_left()
	blockLeft()
	print("t2")

func _on_area_1_area_entered(area: Area2D) -> void:
	input_string += "U"
	blockRight()
	#disable_all_right()

func _on_area_2_area_entered(area: Area2D) -> void:
	input_string += "I"
	disable_all_right()

func _on_area_3_area_entered(area: Area2D) -> void:
	input_string += "O"
	disable_all_right()

func _on_area_4_area_entered(area: Area2D) -> void:
	input_string += "P"
	disable_all_right()

func _on_area_5_area_entered(area: Area2D) -> void:
	input_string += "G"
	disable_all_right()

func _on_area_6_area_entered(area: Area2D) -> void:
	input_string += "H"
	disable_all_right()

func _on_area_7_area_entered(area: Area2D) -> void:
	input_string += "J"
	disable_all_right()

func _on_area_8_area_entered(area: Area2D) -> void:
	input_string += "K"
	disable_all_right()

func _on_area_9_area_entered(area: Area2D) -> void:
	input_string += "L"
	disable_all_right()

func _on_area_10_area_entered(area: Area2D) -> void:
	input_string += "V"
	disable_all_right()

func _on_area_11_area_entered(area: Area2D) -> void:
	input_string += "B"
	disable_all_right()

func _on_area_12_area_entered(area: Area2D) -> void:
	input_string += "N"
	disable_all_right()

func _on_area_13_area_entered(area: Area2D) -> void:
	input_string += "M"
	disable_all_right()

func _on_area_1_area_entered_l(area: Area2D) -> void:
	input_string += "Q"
	disable_all_left()

func _on_area_2_area_entered_l(area: Area2D) -> void:
	input_string += "W"
	disable_all_left()

func _on_area_3_area_entered_l(area: Area2D) -> void:
	input_string += "E"
	disable_all_left()

func _on_area_4_area_entered_l(area: Area2D) -> void:
	input_string += "R"
	disable_all_left()

func _on_area_5_area_entered_l(area: Area2D) -> void:
	input_string += "T"
	disable_all_left()

func _on_area_6_area_entered_l(area: Area2D) -> void:
	input_string += "Y"
	disable_all_left()

func _on_area_7_area_entered_l(area: Area2D) -> void:
	input_string += "A"
	disable_all_left()

func _on_area_8_area_entered_l(area: Area2D) -> void:
	input_string += "S"
	disable_all_left()

func _on_area_9_area_entered_l(area: Area2D) -> void:
	input_string += "D"
	disable_all_left()

func _on_area_10_area_entered_l(area: Area2D) -> void:
	input_string += "F"
	disable_all_right()

func _on_area_11_area_entered_l(area: Area2D) -> void:
	input_string += "Z"
	disable_all_right()

func _on_area_12_area_entered_l(area: Area2D) -> void:
	input_string += "X"
	disable_all_right()

func _on_area_13_area_entered_l(area: Area2D) -> void:
	input_string += "C"
	disable_all_right()
