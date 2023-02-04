extends Node

var acorn = preload("res://Acorn.tscn")
var acorn_instance
var acorn_spawned = false
var acorn_launch = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			acorn_spawned = true
			acorn_launch = false
			acorn_instance = acorn.instantiate()
			acorn_instance.position = event.position
			add_child(acorn_instance) 
		else:
			acorn_spawned = false
			acorn_launch = true
			
	if event is InputEventMouseMotion:
		if acorn_spawned:
			acorn_instance.position = event.position
		if acorn_launch:
			acorn_instance.launch(event.velocity)
			acorn_launch = false
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
