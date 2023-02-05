extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.hframes = 4
	var leaf_texture = randi() % 3
	
	match(leaf_texture):
		0:
			$Sprite2D.frame = 0
		1:
			$Sprite2D.frame = 1
		2:
			$Sprite2D.frame = 2 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
