extends KinematicBody2D

var mouse_position
var is_fired = false

func _ready():

	pass
	
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		mouse_position = get_global_mouse_position() - global_position
		is_fired = true
	if is_fired:
		var collisions = move_and_collide(mouse_position/20)
		if collisions != null:
			queue_free()
	pass
