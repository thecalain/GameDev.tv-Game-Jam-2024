extends CharacterBody2D

var player_speed = 150
var weapon = "special"
var action = "idle"
var defense = 0

#var projectile_scene
#var projectile_speed = 400
#
#func _ready():
	## Load the projectile scene if not already set in the inspector
	#if projectile_scene == null:
		#projectile_scene = preload("res://scenes/scepter_projectile.gd")
	#
#
#func shoot_projectile():
	#var projectile_instance = projectile_scene.instance()
	#var direction = Vector2(1, 0)
	#projectile_instance.position = global_position
	#projectile_instance.velocity = direction * proj`ectile_speed
	#get_parent().add_child(projectile_instance)

func _process(delta):
	if Input.is_action_just_pressed("change_weapon"):
		if weapon == "sword":
			weapon = "axe"
		elif weapon == "axe":
			weapon = "scepter"
		elif weapon == "scepter":
			weapon = "special"
		elif weapon == "special":
			weapon = "sword"
		else:
			weapon = weapon
	
	if Input.is_action_pressed("attack"):
		action = "attack"
		#shoot_projectile()
	elif Input.is_action_pressed("move_left"):
		$AnimatedSprite2D.flip_h = true
		action = "walk"
		position.x -=  player_speed * delta
	elif Input.is_action_pressed("move_right"):
		$AnimatedSprite2D.flip_h = false
		action = "walk"
		position.x +=  player_speed * delta
	elif Input.is_action_pressed("move_up"):
		action = "walk"
		position.y -= player_speed * delta
	elif Input.is_action_pressed("move_down"):
		action = "walk"
		position.y +=  player_speed * delta
	else:
		action = "idle"
	var player_state_and_equipment = weapon + "_" + action + "_def" + str(defense)	
	$AnimatedSprite2D.play(player_state_and_equipment)
	
	
	


