extends Node2D
var levelload = preload("res://Scenes/level.tscn")
var walkloadman = preload("res://Scenes/Man_Walk_1.tscn")
var walkloadwoman = preload("res://Scenes/woman_walk_1.tscn")
var dialogtriggered = 0

@onready var timelineend = Dialogic.connect("timeline_ended", walkout)
# Called every frame. 'delta' is the elapsed time since the previous frame.

func walkout():
	$Man.queue_free()
	$Woman.queue_free()
	var womanwalk = walkloadwoman.instantiate()
	add_child(womanwalk)
	var manwalk = walkloadman.instantiate()
	add_child(manwalk)

func _process(delta):
	pass

func calldialog():
	Dialogic.start("couple_talk1")
