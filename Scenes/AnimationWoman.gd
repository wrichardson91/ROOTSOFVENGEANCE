extends Area2D

func _ready():
	pass

func playanimation(animation):
	$AnimationPlayer.play(animation)


func _on_area_2d_body_entered(body):
	if body.name == "Branch":
		$Sprite2D.hide()
		$Ded.show()
		$Ded.position.y += 30
		$Ded.frame= 0
		Dialogic.start("pot_murder1")
