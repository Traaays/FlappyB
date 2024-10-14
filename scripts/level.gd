extends Node3D

class_name level

@onready var flappyGuy = $Flappy
@onready var game_over_canvas = $GameOverCanvas

@onready var new_text_label = $GameOverCanvas/Rect/NEWText
@onready var score_label = $GameOverCanvas/Rect/Score
@onready var best_label = $GameOverCanvas/Rect/Best

static var highscore = 0
var score = 0

func _ready():
	$Pipe.position.y = $Pipe.rand.randf_range(-1.5,2.5)

func _process(_delta):
	$Ground/floor.position.x = flappyGuy.position.x
	$ScoreCanvas/Label.text = str(score)
