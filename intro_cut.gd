extends Node2D
var levelload = preload("res://Scenes/level.tscn")
@onready var pathtrigger = $Path2D.get_child(1)
var dialogtriggered = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func calldialog():
	Dialogic.start("couple_talk1")
