extends Sprite2D

# Random speed for the bubble (between 30 and 100 pixels/second)
var speed = 0

func _ready() -> void:
	# Assign a random speed to the bubble
	speed = randf_range(30, 100)

func _process(delta: float) -> void:
	# Move the bubble down
	position.y += speed * delta

	# If the bubble reaches the bottom of the screen, remove it
	if position.y > get_viewport_rect().size.y:
		queue_free()
