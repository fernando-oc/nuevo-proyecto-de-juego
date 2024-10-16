extends Node

@onready var label_5: Label = $"../enemies/Label5"

var score = 0

func add_point():
	score += 1
	label_5.text = "Score " + str(score)
