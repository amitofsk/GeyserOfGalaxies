extends Panel


# Declare member variables here. Examples:
var identity_name = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func say_my_name():
	if identity_name == 1:
		$IB_Text.text = "Now entering the Cartwheel Galaxy!"
	elif get_name() == "Infobox_NGC13":
		$IB_Text.text = "Now entering the Great Barred Spiral Galaxy!"
	elif get_name() == "Infobox_StephQ":
		$IB_Text.text = "Now entering the Stephan's Quintet!"
	elif get_name() == "Infobox_NGC7469":
		$IB_Text.text = "Now entering the Double Barred Seyfert Galaxy!"

func _on_Timer_timeout():
	queue_free()

