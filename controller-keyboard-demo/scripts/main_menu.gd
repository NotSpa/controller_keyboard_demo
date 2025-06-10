extends Control

@onready var id = get_node("/root/Id")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_normal_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/normal_layout.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
