extends Node

var player : Player
var wave : int
var score : int

func playerInit(new_player : Player) -> void:
	player = new_player
	player.playerHasDied.connect(handleDeath)

func handleDeath():
	get_tree().change_scene_to_file("res://scenes/death.tscn")
