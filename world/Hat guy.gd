extends Hat guy

# class member variables go here, for example:

export (int) var speed = 200

var health = 3
var direction
var timer = 120
var hold = true
var velocity = Vector2()

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	
	randomize()
	direction = randi()%5+1
	
	if timer == 0 && hold == true:
		direction = 5
		timer += 1
		if timer == 120:
			hold = false
	
	if direction == 1:
		velocity.x += 1
	if direction == 2:
		velocity.x -= 1
	if direction == 3:
		velocity.y -= 1
	if direction == 4:
		velocity.y += 1
	
	timer -= 1
	if timer == 0:
		hold = true
		
	move_and_slide(velocity)