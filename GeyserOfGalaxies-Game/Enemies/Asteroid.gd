extends Area2D


export var speed = 100
var direction = 1
var rand_move = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize() # Randomize the seed
	# Randomizes the wait time
	$Change_Move_Timer.wait_time = randf() * 5
	$Movement_Timer.wait_time = randf() * 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	position += Vector2((speed * direction) * delta, 0.0)
	move_random(delta, rand_move)

# This changes direction after timer times out
func _on_Movement_Timer_timeout():
	speed *= -1

func move_random(delta, rand_move_in):
	if rand_move_in == 0:
		position += Vector2((speed * direction) * delta, 0.0)
	elif rand_move_in == 1:
		position += Vector2(0.0, (speed * direction) * delta)
	elif rand_move_in == 2:
		position += Vector2((speed * direction) * delta, (speed * direction) * delta)


func _on_Change_Move_Timer_timeout():
	rand_move = randi() % 3
	$Change_Move_Timer.wait_time = randf() * 3
