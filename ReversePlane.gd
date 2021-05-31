extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed : int = -200
var vel : Vector2 = Vector2()

onready var sprite : Sprite = get_node("plane")

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	
	
	vel.x += speed * delta
		
	vel = move_and_slide(vel, Vector2.UP)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
