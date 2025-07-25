extends Control

@onready var id = get_node("/root/Id")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("A"):
		get_tree().change_scene_to_file("res://scenes/explanation_radial.tscn")
	if Input.is_action_just_pressed("B"):
		get_tree().quit()


func _on_start_normal_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/explanation_radial.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
