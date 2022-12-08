extends Area2D

var collisions

func _ready():
	pass

func _process(delta):
	pass

func _on_estickman_body_entered(body):
	get_parent().queue_free()
	pass # Replace with function body.
