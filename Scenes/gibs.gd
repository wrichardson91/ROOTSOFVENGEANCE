
extends Node2D

@export var giblet_pics : Array[CompressedTexture2D] = []

var giblets : Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for img in giblet_pics:
		var new_giblet = load("res://Scenes/giblet.tscn") #var scene = load("res://MyScene.tscn")
		new_giblet.set_giblet_pic(img)
		new_giblet.set_position(position)
		giblets.append(new_giblet)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func bust():
	for g in giblets:
		g.bustin = true
