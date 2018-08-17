extends KinematicBody2D

onready var ANI = get_node("player/AnimationPlayer")

func _ready():
	set_process_input(true)
	pass
	
func _input(event):
	if event.is_action_pressed("ui_left"): 
		State = "walkleft"
	elif event.is_action_pressed("ui_right"):
		State = "walkright"
	elif event.is_action_pressed("ui_up"):
		State = "walkup"
	elif event.is_action_pressed("ui_down"):
		State = "walkdown"
	
func _process(delta):
	if ANI.get_current_animation() != State:
		ANI.play(State)
	pass