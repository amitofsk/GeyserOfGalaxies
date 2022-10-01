extends Area2D


export var speed = 100
var direction = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2((speed * direction) * delta, 0.0)

# This changes direction after timer times out
func _on_Timer_timeout():
	speed *= -1
