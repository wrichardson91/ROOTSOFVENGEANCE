extends Area2D

@onready var path_follow = get_parent()

@export var speed = 150
var move_direction = 0

func _physics_process(delta):
	MovementLoop(delta)

func _process(delta):
	AnimationLoop()

func MovementLoop(delta):
	var prepos = path_follow.get_global_position()
	path_follow.set_progress(path_follow.get_progress() + speed * delta)
	var pos = path_follow.get_global_position()
	move_direction = (pos.angle_to_point(prepos) / 3.14)*180

func AnimationLoop():
	var animation_direction
	if move_direction <= 45 and move_direction >= -45:
		animation_direction = "_left"
	elif move_direction <= 135 and move_direction >= 45:
		animation_direction = "_up"
	elif move_direction <= -45 and move_direction >= -135:
		animation_direction = "_down"
	elif move_direction <= -135 or move_direction >= 135:
		animation_direction = "_right"
	var animation = "walk" + animation_direction
	get_node("AnimationPlayer").play(animation)
