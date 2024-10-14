extends CanvasLayer

func change_scene_to(target):
	$AnimationPlayer.play('in')
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play('out')
