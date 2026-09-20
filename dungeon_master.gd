extends Node
class_name DungeonMaster

var player : Player
var wave : int
var score : int

func playerInit(new_player : Player) -> void:
	if !player:
		player = new_player
	player.playerHasDied.connect(handleDeath)

func handleDeath():
	pass
