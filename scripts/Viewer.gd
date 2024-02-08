extends Node3D

@export var speed = 4  # Adjust the speed as needed
@export var amplitude = .3  # Adjust the amplitude of the movement as needed
var initialOffset = 0
var rng = RandomNumberGenerator.new()
var timePassed = 0

func _ready():
	initialOffset = rng.randf_range(0.0, 2 * PI)

func _process(delta):
	# Move the capsule up and down
	timePassed = timePassed + delta
	var offset = Vector3(0, amplitude * sin(speed * timePassed + initialOffset) + amplitude, 0)
	$MeshInstance3D.transform.origin = offset
