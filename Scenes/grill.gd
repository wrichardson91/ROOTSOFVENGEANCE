extends Area2D

var isOpen = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_body_entered(body):
	if(isOpen == true):
		$".".play("closed")
		print("it was open, now closed")
	else:
		isOpen = false
		$".".play("open")
		print("it was closed, now opened")
	
	
