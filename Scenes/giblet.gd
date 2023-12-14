extends Node2D

@export var distance_thrown = 20
@export var force = 10
var angle_thrown : Vector2
var origin_point : Vector2
var bustin : bool

# Called when the node enters the scene tree for the first time.
func _ready():
	origin_point = position
	$Sprite2D.rotate(2*PI*randf())

func set_giblet_pic(giblet_pic):
	$Sprite2D.Texture = giblet_pic

func set_angle_thrown(angle:Vector2):
	angle_thrown = angle

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if bustin and position.distance_to(origin_point) < distance_thrown :
		position = position + (delta * force * angle_thrown)

