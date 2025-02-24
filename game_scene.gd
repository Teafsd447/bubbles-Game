extends Node2D
@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.start()
	
	# Increment the spawn timer
	
	
	# Check if it is time to spawn a new bubble




func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file( "res://end_menu.tscn")
	
