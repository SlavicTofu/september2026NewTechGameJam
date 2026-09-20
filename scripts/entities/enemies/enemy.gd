extends Entity
class_name Enemy

@onready var player : Player = get_tree().get_first_node_in_group("Player")

@export var attack_damage : int
@export var follow_distance : float
@export var attack_distance : float

@export var wander_interval : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	move_and_slide()
	pass

func hurt(amount) -> void:
	health -= amount
	# handle death
