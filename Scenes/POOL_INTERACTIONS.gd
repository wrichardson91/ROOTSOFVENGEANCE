extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_body_entered(body):
	body.call_deferred("set_freeze_mode", 0)
	body.call_deferred("set_freeze_enabled", true)

func _on_area_2d_body_leaving(body):
	
	pass
