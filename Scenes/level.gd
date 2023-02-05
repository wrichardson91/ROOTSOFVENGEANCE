extends Node2D


@onready var womanwalk2 = preload("res://Scenes/woman_walk_2.tscn")
var bgmusic = $AudioStreamPlayer
var introtimer = $Timer_wwp



# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.current = true
	$Timer_wwp.start()


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


#Woman Walk to Pot and Water Call
func _on_timer_wwp_timeout():
	womanwalk2.instantiate()
