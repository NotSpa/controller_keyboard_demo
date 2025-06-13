extends Node2D

@onready var id = get_node("/root/Id")
@onready var run = get_node("/root/Id").radialRun

@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start(240.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	if run == 0:
		get_node("/root/Id").radialRun = get_node("/root/Id").radialRun + 1
		get_tree().change_scene_to_file("res://scenes/explanation_normal.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/prep_2_nd_normal.tscn")
