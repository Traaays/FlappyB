extends CharacterBody3D

class_name flappy

@onready var die = $AudioListener3D/die
@onready var score = $AudioListener3D/score

var SPEED = 3.0
var JUMP_VELOCITY = 5

func _physics_process(delta):
	if $"../GameOverCanvas".visible == false:
		velocity += get_gravity() * delta
	
		if Input.is_action_just_pressed("flap"):
			velocity.y = JUMP_VELOCITY
				
		velocity.x = SPEED
		move_and_slide()
	else:
		if Input.is_action_just_pressed("flap"):
			get_tree().reload_current_scene()
	
	$Camera3D.position.y = -position.y
	
	if velocity.y < 0:
		$Bird.rotation_degrees.z = velocity.y * 10
	else:
		$Bird.rotation_degrees.z = velocity.y * 6
