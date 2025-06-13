extends Node

@onready var rand = RandomNumberGenerator.new()

@onready var id = rand.randi_range(100000,999999)

@onready var normalRun = 0
@onready var radialRun = 0

func _ready() -> void:
	pass
