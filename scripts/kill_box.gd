extends Area3D
func _on_body_entered(body):
	if body is flappy:
		body.die.play()
		body.get_parent().game_over_canvas.visible = true
		if level.highscore < body.get_parent().score:
			level.highscore = body.get_parent().score
			body.get_parent().new_text_label.visible = true
		body.get_parent().score_label.text = str(body.get_parent().score)
		body.get_parent().best_label.text = str(level.highscore)
