extends Area2D

@onready var shovel = $Shovel

func knock():
	shovel.rotation = -4.0
	$AudioStreamPlayer2D.play()
	$Timer.start()

func _on_body_entered(body):
	knock()


func _on_timer_timeout():
	$AudioStreamPlayer2D.stop()
