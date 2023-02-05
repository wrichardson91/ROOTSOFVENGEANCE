extends RigidBody2D

var gravityOff: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func launch(force: Vector2):
	print("FORCE-------------", force )
	$".".apply_impulse(force)

