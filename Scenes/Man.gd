extends Path2D

#@onready var path_follow = get_child(0)
@onready var man = $PathFollow2D.get_child(0)

@export var speed = 150
@export var idle_end = false
var move_direction = 0


func _physics_process(delta):
	pass

func MovementLoop(delta):
	if $PathFollow2D.progress_ratio < 1:
		var prepos = man.get_global_position()
		$PathFollow2D.set_progress($PathFollow2D.progress + speed * delta)
		var pos = man.get_global_position()
		move_direction = (pos.angle_to_point(prepos) / 3.14)*180
	if $PathFollow2D.progress_ratio == 1 and not idle_end and not $PathFollow2D.loop:
		queue_free()

func AnimationLoop():
	var animation
	if move_direction <= 45 and move_direction >= -45:
		animation = "walk_left"
	elif move_direction <= 135 and move_direction >= 45:
		animation = "walk_up"
	elif move_direction <= -45 and move_direction >= -135:
		animation = "walk_down"
	else: # move_direction <= -135 or move_direction >= 135:
		animation = "walk_right"
	
	if not $PathFollow2D.loop and $PathFollow2D.progress_ratio == 1 and idle_end:
		if move_direction >= 135 or move_direction <= -45:
			animation = "idle_right"
		else :
			animation = "idle_left"
	
	man.playanimation(animation)


