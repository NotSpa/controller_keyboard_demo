extends TextEdit

@export var target_string: String

@onready var timer = $"../Timer"

var count: int

var time = Time

@onready var id = get_node("/root/Id").id
@onready var run = get_node("/root/Id").radialRun

var type = "radial"

var strings = [ 
	"MEET ME AFTER LUNCH TODAY",
	"CHECK YOUR INBOX RIGHT NOW",
	"BRING EXTRA DRINKS AND CUPS",
	"SHE TEXTS BACK TOO SLOW",
	"NEVER TRUST RUMORS FROM STRANGERS",
	"PLEASE ATTEND WORK NEXT WEEK",
	"PARTY STARTS AROUND EIGHT SHARP",
	"CLEAN YOUR ROOM RIGHT NOW",
	"I LOVED THAT MOVIE TOO",
	"CATCH UP LATER THIS EVENING",
	"FLIGHTS LEAVE EARLY EACH MORNING",
	"PACK SHOES SHIRTS AND HATS",
	"HOTEL STAFF OFFERS GREAT SERVICE",
	"BEACH LOOKS CALM AND WARM",
	"BRING WATER SNACKS AND SUNSCREEN",
	"WE HIKE TRAILS BEFORE LUNCH",
	"TRY LOCAL FOOD AND DRINKS",
	"MAPS HELP GUIDE OUR ROUTE",
	"BUSES RUN EVERY THIRTY MINUTES",
	"SUNSET VIEWS MAKE EVERYTHING BETTER"
	]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	count = 0
	$".".set("text", strings[count])
	count = count + 1
	InputMap.action_set_deadzone("r2", 0.1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_released("r2"):
		$".".text = strings[count % (strings.size())]
		count = count + 1
	pass


func _on_input_text_text_set() -> void:
	if ($"../left_radial_menu/left_stick_input_pointer".block_left || $"../right_radial_menu/right_stick_input_pointer".block_right):
		prints(id, ";", type, ";", run, ";", time.get_ticks_msec(), ";", $"../input_text".text, ";", $"../target_text".text)
