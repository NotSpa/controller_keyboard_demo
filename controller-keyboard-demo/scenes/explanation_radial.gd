extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("A"):
		get_tree().change_scene_to_file("res://scenes/controller_layout.tscn")

func _on_ok_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/controller_layout.tscn")
