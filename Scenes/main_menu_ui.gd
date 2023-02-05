extends Control

var loadgame = preload("res://intro_cut.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_start_button_pressed():
	print("START")
	$Click.play()
	await($Click.finished)
	get_tree().change_scene_to_file("res://intro_cut.tscn")


func _on_quit_button_pressed():
	$Click.play()
	await($Click.finished)
	get_tree().quit()

