extends CharacterBody2D

@onready var parent = $".."

func _physics_process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("Q"):
		$"../Area2D/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("W"):
		$"../Area2D2/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("E"):
		$"../Area2D3/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("R"):
		$"../Area2D4/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("T"):
		$"../Area2D5/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("Y"):
		$"../Area2D6/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("U"):
		$"../Area2D7/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("I"):
		$"../Area2D8/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("O"):
		$"../Area2D9/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("P"):
		$"../Area2D10/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("A"):
		$"../Area2D11/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("S"):
		$"../Area2D12/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("D"):
		$"../Area2D13/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("F"):
		$"../Area2D14/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("G"):
		$"../Area2D15/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("H"):
		$"../Area2D16/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("J"):
		$"../Area2D17/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("K"):
		$"../Area2D18/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("L"):
		$"../Area2D19/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif  area.is_in_group("DEL"):
		$"../Area2D20/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("Z"):
		$"../Area2D21/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("X"):
		$"../Area2D22/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("C"):
		$"../Area2D23/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("V"):
		$"../Area2D24/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("B"):
		$"../Area2D25/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("N"):
		$"../Area2D26/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif area.is_in_group("M"):
		$"../Area2D27/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif  area.is_in_group("Space"):
		$"../Area2D28/ColorRect".color = Color(0.305, 0.538, 0.794)
	elif  area.is_in_group("NEXT"):
		$"../Area2D30/ColorRect".color = Color(0.305, 0.538, 0.794)


func _on_area_exited(area: Area2D) -> void:
	if area.is_in_group("Q"):
		$"../Area2D/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("W"):
		$"../Area2D2/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("E"):
		$"../Area2D3/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("R"):
		$"../Area2D4/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("T"):
		$"../Area2D5/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("Y"):
		$"../Area2D6/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("U"):
		$"../Area2D7/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("I"):
		$"../Area2D8/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("O"):
		$"../Area2D9/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("P"):
		$"../Area2D10/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("A"):
		$"../Area2D11/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("S"):
		$"../Area2D12/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("D"):
		$"../Area2D13/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("F"):
		$"../Area2D14/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("G"):
		$"../Area2D15/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("H"):
		$"../Area2D16/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("J"):
		$"../Area2D17/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("K"):
		$"../Area2D18/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("L"):
		$"../Area2D19/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif  area.is_in_group("DEL"):
		$"../Area2D20/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("Z"):
		$"../Area2D21/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("X"):
		$"../Area2D22/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("C"):
		$"../Area2D23/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("V"):
		$"../Area2D24/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("B"):
		$"../Area2D25/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("N"):
		$"../Area2D26/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif area.is_in_group("M"):
		$"../Area2D27/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif  area.is_in_group("Space"):
		$"../Area2D28/ColorRect".color = Color(0.075, 0.188, 0.31)
	elif  area.is_in_group("NEXT"):
		$"../Area2D30/ColorRect".color = Color(0.075, 0.188, 0.31)
