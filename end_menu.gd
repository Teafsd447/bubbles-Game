extends Control


func _on_startA_pressed() -> void:
	Global.score = 0
	get_tree().change_scene_to_file( "res://game_scene.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
