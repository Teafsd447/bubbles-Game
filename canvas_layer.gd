extends CanvasLayer

var bubbles = 0

func _ready():
	$Label2.text = str(bubbles)
	


func _on_bubbles_collected():
	bubbles = bubbles + 1
	_ready()
