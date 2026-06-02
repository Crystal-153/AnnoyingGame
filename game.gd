extends Node

@onready var ball= $Ball
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randBall()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_ball_mouse_entered() -> void:
	randBall()

func randBall():
	ball.position = Vector2(randi_range(0, 1152),randi_range(0,648))


func _on_timer_timeout() -> void:
	pass # Replace with function body.
