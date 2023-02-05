extends Node2D

var isOpen = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	print("HIT GRILL BAM BAM")
	if(isOpen == true):
		$AnimatedSprite2D.play("closed")
		print("it was open, now closed")
		$AudioStreamPlayer.play()
		isOpen = false
	else:
		$AnimatedSprite2D.play("open")
		$AudioStreamPlayer2.play()
		print("it was closed, now opened")
		isOpen = true
	pass # Replace with function body.
