extends Node2D

export var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2()
	if Input.is_action_pressed("ui_left"):
		direction.x = -1.0
	elif Input.is_action_pressed("ui_right"):
		direction.x = 1.0
	if Input.is_action_pressed("ui_up"):
		direction.y = -1.0
	elif Input.is_action_pressed("ui_down"):
		direction.y = 1.0

	var velocity = direction * speed * delta
	position += velocity
