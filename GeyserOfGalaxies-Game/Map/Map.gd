extends Node2D


# Declare member variables here. Examples:
var can_retry = true


# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.connect("destroyed", self, "_on_player_destroyed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_retry and Input.is_action_pressed("retry"):
#		can_retry = false
		get_tree().change_scene("res://Map/Map.tscn")
	
	if Input.is_action_pressed("quit"):
		get_tree().quit()
	
#	if $CWG/Infobox_CWG.show() == true and $NGC1365/Infobox_NGC13.show() == true and $StephQ/Infobox_StephQ.show() == true and $NGC7469/Infobox_NGC7469.show() == true:
#		can_retry = true

func _on_player_destroyed():
	$Retry.show()
	can_retry = true
