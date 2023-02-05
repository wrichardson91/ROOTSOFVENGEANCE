extends Node

# emitters
signal AcornHitPlant
signal AcornHitWindow
signal LadyAtWater
signal LadyInWater

# ------------------ states ------------------------------
var plantWateredOnce: bool
var didKnockOnWindow: bool
var didHitPlant: bool
var ladyHitPool: bool
var stickGoDown: bool
var ladyFellInPool: bool

# counters
var plantCounter: int 
var windowCounter: int

# Called when the node enters the scene tree for the first time.
func _ready():
	# setup bools
	plantWateredOnce = false
	didKnockOnWindow = false
	didHitPlant = false
	ladyHitPool = false
	stickGoDown = false
	ladyFellInPool = false
	
	# setup counters
	plantCounter = 0
	windowCounter = 0
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func hitWindowWithAcorn():
	windowCounter += 1
	didKnockOnWindow = true
	emit_signal("AcornHitWindow")
	
func HitPlantWithAcorn():
	plantCounter += 1
	didHitPlant = true
	emit_signal("AcornHitPlant")

func LadyIsAtWater():
	ladyHitPool = true
	emit_signal("LadyAtWater")
	
func LadyIsInWater():
	ladyFellInPool = true
	emit_signal("LadyInWater")
