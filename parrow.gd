extends RigidBody2D

var mouse_position
var is_fired = false

func _ready():
	mass = 4
	mode = MODE_STATIC
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		mouse_position = get_global_mouse_position() - global_position
		mode = MODE_RIGID
		apply_impulse(Vector2.ZERO , Vector2(900,0))
		is_fired = true
		if linear_velocity.is_equal_approx(Vector2.ZERO):
			is_fired = false
		pass

	if is_fired:
		pass

func _physics_process(delta: float) -> void:
	if is_fired:
		look_at(position + linear_velocity)	
		pass

func _on_parrow_body_entered(body: Node) -> void:
	queue_free()
	pass
