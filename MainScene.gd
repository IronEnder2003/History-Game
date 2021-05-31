extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var employment = 0
onready var health = 0

onready var dateText = get_node("Date")
onready var date = ["March, 2020", "April, 2020", "May, 2020", "June, 2020", 
"July, 2020", "August, 2020", "September, 2020", "October, 2020", "November, 2020", "December, 2020",
"January, 2021", "Feburary, 2021", "March, 2021", "April, 2021", "May, 2021"]
onready var i = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	dateText.text = date[i]



func _on_KeepLockDownButton_pressed():
	i = i + 1
	dateText.text = date[i]
	health = health + 1
	employment = employment - 1
	
	if dateText.text == "May, 2021" && employment == 0 && health == 0:
		get_tree().change_scene("res://WinScene.tscn")
		get_node("PlayerUI/KeepLockDownButton").queue_free()
		get_node("PlayerUI/LiftRegulationsButton").queue_free()
		
	elif dateText.text == "May, 2021" && employment > 0 && health < 0:
		get_tree().change_scene("res://EconomyScene.tscn")
		get_node("PlayerUI/KeepLockDownButton").queue_free()
		get_node("PlayerUI/LiftRegulationsButton").queue_free()

	elif dateText.text == "May, 2021" && employment < 0 && health > 0:
		get_tree().change_scene("res://HealthScene.tscn")
		get_node("PlayerUI/KeepLockDownButton").queue_free()
		get_node("PlayerUI/LiftRegulationsButton").queue_free()


func _on_LiftRegulationsButton_pressed():
	i = i + 1
	dateText.text = date[i]
	employment = employment + 1
	health = health - 1
	
	if dateText.text == "May, 2021" && employment == 0 && health == 0:
		get_tree().change_scene("res://WinScene.tscn")
		get_node("PlayerUI/KeepLockDownButton").queue_free()
		get_node("PlayerUI/LiftRegulationsButton").queue_free()
		
	elif dateText.text == "May, 2021" && employment > 0 && health < 0:
		get_tree().change_scene("res://EconomyScene.tscn")
		get_node("PlayerUI/KeepLockDownButton").queue_free()
		get_node("PlayerUI/LiftRegulationsButton").queue_free()

	elif dateText.text == "May, 2021" && employment < 0 && health > 0:
		get_tree().change_scene("res://HealthScene.tscn")
		get_node("PlayerUI/KeepLockDownButton").queue_free()
		get_node("PlayerUI/LiftRegulationsButton").queue_free()
	
