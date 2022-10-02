extends Area2D


var speed = 500




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(speed * delta, 0.0)


func _on_Timer_timeout():
	queue_free()
