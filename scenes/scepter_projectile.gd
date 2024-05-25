#extends Area2D
#
#var speed = 400
#var velocity = Vector2()
#
#func _ready():
	#velocity = Vector2(speed, 0)
#
#func _process(delta):
	#position += velocity * delta
	#if is_outside_viewport():
		#queue_free()
#
#func is_outside_viewport():
	#var viewport_rect = get_viewport().get_visible_rect()
	#return !viewport_rect.has_point(global_position)
