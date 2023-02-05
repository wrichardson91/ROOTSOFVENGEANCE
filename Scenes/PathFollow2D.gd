extends PathFollow2D



@export var runSpeed = 40 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_progress(get_progress_ratio() + runSpeed * delta)

	if(loop == false and get_progress_ratio() == 1):
		queue_free()
