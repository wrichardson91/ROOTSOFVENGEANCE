extends Node

var acorn = preload("res://Acorn.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


