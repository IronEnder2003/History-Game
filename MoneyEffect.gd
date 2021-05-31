extends Particles2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var mainNode = get_node("/root/MainScene")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	if mainNode.employment >= 0:
		visible = true
		pass
		
	else:
		visible = false
		pass
