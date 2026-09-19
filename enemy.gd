class_name Enemy
extends Entity

@onready var player = $Player

var attack_damage
var follow_distance
var attack_distance

var wander_interval
var wander_distance

var state = State.IDLE

enum State {
	IDLE,
	FOLLOW,
	ATTACK,
}

func pollState() -> State:
	var distanceFromPlayer = sqrt( ( position.x - player.position.x ) ^ 2 +( position.y - player.position.y ) )
	return (
		State.ATTACK if distanceFromPlayer < attack_distance
		else State.FOLLOW if distanceFromPlayer < follow_distance
		else State.IDLE
	)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
