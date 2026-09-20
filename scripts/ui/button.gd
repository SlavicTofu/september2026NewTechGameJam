extends Button


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/arena.tscn")
