extends Node2D

var hits = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	$audiothud.play()
	hits = hits+1
	if (hits > 5):
		$enginerun.play()
		$AnimatedSprite2D.play("running")
	else:
		$enginesput.play()
	pass # Replace with function body.
