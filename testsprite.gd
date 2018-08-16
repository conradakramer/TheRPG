extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var sex = 0
var body = 0
var pants = 0
var hair = 0
var feet = 0
var chest = 0
var cape = 0
var neck = 0
var face = 0
var head = 0
var belt = 0
var hands = 0
var direction = 0
var weapon = 0

onready var legs = get_node("player/legs")
onready var ANI = get_node("player/AnimationPlayer")


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#set_fixed_process(true)
	set_process_input(true)
	pass

func _input(event):
	if event.is_action_pressed("ui_left"): 
		legs.set_texture(load("res://rpg-pack/chars/teal_pants_male.png"))
		
    #if event.is_action_pressed("ui_right"): x += 5
#func _unhandled_input(event):
#    if event is InputEventKey:
#        if event.pressed and event.scancode == KEY_SPACE:
#            switch

func _process(delta):
	var State = "stop"
	
	if Input.is_action_pressed("ui_left"):
		State = "walkleft"
		direction = 0
	elif Input.is_action_pressed("ui_right"):
		State = "walkright"
		direction = 2
	elif Input.is_action_pressed("ui_up"):
		State = "walknorth"
		direction = 1
	elif Input.is_action_pressed("ui_down"):
		State = "walksouth"
		direction = 3
	else:
		ANI.stop(true)
		
		
	if ANI.get_current_animation() != State:
		ANI.play(State)
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	#AnimationPlayer.play("animation1")
	 
	pass
