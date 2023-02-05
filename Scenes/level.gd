extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.current = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event is InputEventMouseMotion:
		print($Camera2D)
		print($Camera2D.get_screen_center_position())
		print($Camera2D.position)
		$Camera2D.position.x = event.position.x + ($Camera2D.get_viewport_rect().size.x / 4)
		print($Camera2D.position)
