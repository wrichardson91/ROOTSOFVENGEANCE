extends Node2D

var bgmusic = $AudioStreamPlayer
var introtimer = $Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.current = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(deltca):
	pass
	
func _input(event):
	if event is InputEventMouseMotion:
		$Camera2D.position.x = event.position.x + ($Camera2D.get_viewport_rect().size.x / 4)


