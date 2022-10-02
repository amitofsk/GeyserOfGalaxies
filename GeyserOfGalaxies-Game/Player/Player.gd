extends Area2D

# This is basic movement with rotation from Godot Docs -- 2D movement
# Modified so that the player moves up and down and rotates to the left and right

export (int) var speed = 500
export (float) var rotation_speed = 1.5
var can_shoot = true

var velocity = Vector2()
var rotation_dir = 0

signal destroyed

func get_input():
	rotation_dir = 0
	velocity = Vector2(0,0)
	if Input.is_action_pressed("ui_right"):
		rotation_dir += 1
	if Input.is_action_pressed("ui_left"):
		rotation_dir -= 1
	if Input.is_action_pressed("ui_up"):
#		velocity = Vector2(0, -speed).rotated(rotation)
		velocity += Vector2(0, -1).rotated(rotation)
	if Input.is_action_pressed("ui_down"):
#		velocity = Vector2(0, speed).rotated(rotation)
		velocity = Vector2(0, 1).rotated(rotation)
		

func _physics_process(delta):
	get_input()
	rotation += rotation_dir * rotation_speed * delta
#	velocity = move_and_slide(velocity)
	position += (delta * speed) * velocity



func _on_Player_area_entered(area):
	if area.is_in_group("enemy"):
		queue_free()
		
		emit_signal("destroyed")
