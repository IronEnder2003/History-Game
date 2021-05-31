extends CollisionShape2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var plane = preload("res://Plane.tscn")
onready var location = Vector2()
onready var timer = get_node("Timer")
onready var mainNode = get_node("/root/MainScene")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	timer.set_wait_time(2)
	timer.start()




func TimerTimeout():
	if mainNode.health >= 0:
		location.y = rand_range(-250, 100)
		var scene = plane.instance()
		scene.position = location 
		add_child(scene)
