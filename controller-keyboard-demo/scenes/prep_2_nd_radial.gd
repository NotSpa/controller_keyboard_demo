extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ok.disabled = true
	$Timer.start(120.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("A") && !$ok.disabled:
		get_tree().change_scene_to_file("res://scenes/controller_layout.tscn")

func _on_timer_timeout() -> void:
	$ok.disabled = false


func _on_ok_pressed() -> void:
	if !$ok.disabled:
		get_tree().change_scene_to_file("res://scenes/controller_layout.tscn")
