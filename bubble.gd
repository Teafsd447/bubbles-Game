extends Area2D
signal bubbles_collected
# Random speed for the bubble (between 30 and 100 pixels/second)
var speed = 0
var start_position: Vector2 = Vector2()  # Save initial position

func _ready():
	# Assign a random speed to the bubble
	speed = randf_range(30, 100)


func _process(delta: float) -> void:
	# Move the bubble down
	position.y += speed * delta
	if position.y > 800:  # Adjust based on your screen size
		reset_position()

func reset_position():
	# Reset to the starting position
	position = Vector2(position.x, start_position.y)


	
func _on_body_entered(body):
	Global.score += 1
	reset_position()
	#queue_free()
