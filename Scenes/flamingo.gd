extends Area2D

@onready var flamingo = $Flamingo

func knock():
	flamingo.rotation += -1.0
	$AudioStreamPlayer2D.play()
	$Timer.start()

func _on_body_entered(body):
	knock()


func _on_timer_timeout():
	$AudioStreamPlayer2D.stop()
