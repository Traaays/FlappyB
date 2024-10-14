extends Node3D

var rand = RandomNumberGenerator.new()

func _process(_delta):
	if position.distance_to(get_parent().flappyGuy.position) >= 15:
		queue_free()

func _on_mid_area_body_entered(body):
	body.get_parent().score += 1
	body.score.play()
	var child = load("res://scenes/pipes.tscn").instantiate()
	child.position.x = position.x + 4
	if position.y - 2 <= -1.5:
		child.position.y = rand.randf_range(-1.5,position.y + 2)
	elif position.y + 2 >= 2.5:
		child.position.y = rand.randf_range(position.y - 2,2.5)
	get_parent().add_child(child)
