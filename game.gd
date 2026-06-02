extends Node

@onready var ball= $Ball
@onready var time=true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ball.position = Vector2(300, 300)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_ball_mouse_entered() -> void:
	randBall()

func randBall():
	if time==true:
		ball.position = Vector2(randi_range(0, 1152),randi_range(0,648))
	else:
		pass

func _on_timer_timeout() -> void:
	time=false


func _on_ball_pressed() -> void:
	get_tree().change_scene_to_file("res://end_game.tscn")
