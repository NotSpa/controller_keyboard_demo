extends TextEdit

@export var target_string: String

@onready var timer = $"../Timer"

var count: int

var strings = [ 
	"LOREM IPSUM DOLOR SIT AMET",
	"CONSETETUR SADIPSCING ELITR",
	"SED DIAM NONUMY EIRMOD TEMPOR",
	"INVIDUNT UT LABORE ET DOLORE",
	"MAGNA ALIQUYAM ERAT SED DIAM",
	"VOLUPTUA AT VERO EOS ET ACCUSAM",
	"ET JUSTO DUO DOLORES ET EA REBUM",
	"STET CLITA KASD GUBERGREN",
	"NO SEA TAKIMATA SANCTUS EST",
	"CONSETETUR SADIPSCING ELITR",
	"DUIS AUTEM VEL EUM IRIURE",
	"DOLOR IN HENDRERIT IN VULPUTATE",
	"VELIT ESSE MOLESTIE CONSEQUAT",
	"VEL ILLUM DOLORE EU FEUGIAT",
	"NULLA FACILISIS AT VERO EROS",
	"ET ACCUMSAN ET IUSTO ODIO ",
	"DIGNISSIM QUI BLANDIT PRAESENT",
	"LUPTATUM ZZRIL DELENIT AUGUE ",
	"DUIS DOLORE TE FEUGAIT NULLA",
	"LOREM IPSUM DOLOR SIT AMET",
	"CONSECTETUER ADIPISCING ELIT",
	"SED DIAM NONUMMY NIBH EUISMOD",
	"TINCIDUNT UT LAOREET DOLORE",
	"MAGNA ALIQUAM ERAT VOLUTPAT"
	]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	count = 0
	$".".set("text", strings[count])
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("r1"):
		count = count + 1
		$".".text = strings[(strings.size() - 1) % count]
	pass
