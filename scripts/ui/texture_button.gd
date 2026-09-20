extends TextureButton

func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/arena.tscn")


func _on_exit_game_pressed() -> void:
	get_tree().quit()


func _on_options_pressed() -> void:
	pass
