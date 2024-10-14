extends Node3D

@onready var flappyGuy = $Flappy
@onready var game_over_canvas = $GameOverCanvas

@onready var new_text_label = $GameOverCanvas/Rect/NEWText
@onready var score_label = $GameOverCanvas/Rect/Score
@onready var best_label = $GameOverCanvas/Rect/Best

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var pipe = load("res://scenes/pipes.tscn").instantiate()
	pipe.position.y = pipe.rand.randf_range(-1.5,2.5)
	pipe.position.x = 4
	add_child(pipe)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Area3D/floor.position.x = flappyGuy.position.x
	$ScoreCanvas/Label.text = str(score)
	
static func fuckyou():
	print("ö")
