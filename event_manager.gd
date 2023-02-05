extends Node

# emitters
signal AcornHitPlant
signal AcornHitWindow
signal LadyAtWater
signal LadyInWater
signal LeafInPoolFull


# ------------------ states ------------------------------
var plantWateredOnce: bool
var didKnockOnWindow: bool
var didHitPlant: bool
var ladyHitPool: bool
var stickGoDown: bool
var ladyFellInPool: bool
var leafPoolFull: bool

# counters
var plantCounter: int 
var windowCounter: int
var leafCounter:int

# Called when the node enters the scene tree for the first time.
func _ready():
	# setup bools
	plantWateredOnce = false
	didKnockOnWindow = false
	didHitPlant = false
	ladyHitPool = false
	stickGoDown = false
	ladyFellInPool = false
	leafPoolFull = false
	# setup counters
	plantCounter = 0
	windowCounter = 0
	leafCounter = 0
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# check leaf interaction
	if (leafCounter >= 10 && !leafPoolFull):
		leafPoolFull = true
		emit_signal("LeafInPoolFull")
		
func hitWindowWithAcorn():
	windowCounter += 1
	didKnockOnWindow = true
	print("pow", windowCounter, didKnockOnWindow)
	emit_signal("AcornHitWindow")

func addLeafToPool():
	if didHitPlant:
		leafCounter += 1
		
func HitPlantWithAcorn():
	plantCounter += 1
	didHitPlant = true
	print("pow", plantCounter, didHitPlant)
	emit_signal("AcornHitPlant")

func LadyIsAtWater():
	ladyHitPool = true
	emit_signal("LadyAtWater")
	
func LadyIsInWater():
	ladyFellInPool = true
	emit_signal("LadyInWater")

func ResetLeafInPool():
	leafCounter = 0
	leafPoolFull = false

func ResetAcornPlant():
	plantCounter = 0
	didHitPlant = false

func ResetWindowHit():
	windowCounter = 0
	didKnockOnWindow = false
