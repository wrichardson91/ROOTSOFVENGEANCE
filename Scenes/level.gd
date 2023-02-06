extends Node2D

var womanwalk_2 = preload("res://Scenes/woman_walk_2.tscn")
var womanwalk_2out = preload("res://Scenes/woman_walk_2_out.tscn")
var womanwalk_3 = preload("res://Scenes/woman_walk_3.tscn")
var womanwalk2 = womanwalk_2.instantiate()
var womanwalk3 = womanwalk_3.instantiate()
signal pptimerend
var planttalk = false
var ww2walked = false
var planttalk3 = false

var bgmusic = $AudioStreamPlayer
var introtimer = $Timer
@onready var timelineend = Dialogic.connect("timeline_ended", ww2_out)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Camera2D.current = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if EventManager.didKnockOnWindow and EventManager.leafPoolFull:
		add_child(womanwalk3)
	if EventManager.ladyHitPool == true and !planttalk3 and EventManager.leafPoolFull:
		Dialogic.start("pot_conv3")
		planttalk3 = true
	

func _input(event):
	if event is InputEventMouseMotion:
		$Camera2D.position.x = event.position.x + ($Camera2D.get_viewport_rect().size.x / 4)



#Woman Walk out Timer Triggers
func _on_timer_timeout():
	$ww2_timer.start()
	add_child(womanwalk2)

func _on_ww_2_timer_timeout():
	Dialogic.start("pot_water")
	
func ww2_out():
	remove_child(womanwalk2)
	if ww2walked == false:
		var ww2_out = womanwalk_2out.instantiate()
		ww2walked = true
		add_child(ww2_out)
		$pp_timer1.start()
	
func _on_pp_timer_1_timeout():
	$pp_timer1.one_shot = true
	if planttalk == false:
		Dialogic.start("pot_conv1")
		planttalk = true
			
