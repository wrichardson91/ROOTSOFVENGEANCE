extends Area2D

@onready var shed = $Shed

func knock():
	$AudioStreamPlayer2D.play()
	$Timer.start()

func _on_body_entered(body):
	knock()


func _on_timer_timeout():
	$AudioStreamPlayer2D.stop()
