extends Control


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file( "res://game_scene.tscn")
	



func _on_story_pressed() -> void:
	get_tree().change_scene_to_file("res://control.tscn")
