extends Node

var acorn = preload("res://Acorn.tscn")
var leaf = preload("res://Leaf.tscn")
var branch = preload("res://branch.tscn")

var acorn_instance
var acorn_spawned = false
var acorn_launch = false

var leaf_instance
var leaf_spawned = false
var leaf_launch = false

var branch_instance
var branch_spawned = false
var branch_launch = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		# left click
		if event.pressed and event.button_index == 1:
			acorn_spawned = true
			acorn_launch = false
			acorn_instance = acorn.instantiate()
			acorn_instance.position = event.position
			add_child(acorn_instance) 
		else:
			acorn_spawned = false
			acorn_launch = true
		# right click
		if event.pressed and event.button_index == 2:
			leaf_spawned = true
			leaf_launch = false
			leaf_instance = leaf.instantiate()
			leaf_instance.position = event.position
			add_child(leaf_instance) 
		else:
			acorn_spawned = false
			acorn_launch = true			
			
		# middle click
		if event.pressed and event.button_index == 3:
			print(event)
			branch_spawned = true
			branch_launch = false
			branch_instance = branch.instantiate()
			branch_instance.position = event.position
			add_child(branch_instance) 
		else:
			branch_spawned = false
			branch_launch = true
	if event is InputEventMouseMotion:
		if acorn_spawned:
			acorn_instance.position = event.position
		if acorn_launch:
			acorn_instance.launch(event.velocity)
			acorn_launch = false
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
