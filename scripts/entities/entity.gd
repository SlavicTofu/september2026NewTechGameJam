class_name Entity
extends CharacterBody2D

@onready var sprite = $Sprite
@onready var hurtbox = $Hurtbox

@export var health : int
@export var move_speed : float

var _direction = Direction.SOUTH

enum Direction {
	NORTH,
	NORTHEAST,
	EAST,
	SOUTHEAST,
	SOUTH,
	SOUTHWEST,
	WEST,
	NORTHWEST,
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	

func poll_direction() -> Direction:
	var dx = velocity.x
	var dy = velocity.y
	return (
		Direction.SOUTHWEST if (dx < 0 and dy < 0)
		else Direction.SOUTHEAST if (dx > 0 and dy < 0)
		else Direction.NORTHWEST if (dx < 0 and dy > 0)
		else Direction.NORTHEAST if (dx > 0 and dy > 0)
		else Direction.WEST if (dx < 0)
		else Direction.EAST if (dx > 0)
		else Direction.NORTH if (dy < 0)
		else Direction.SOUTH if (dy > 0)
		else _direction
	)


func _attack() -> void:
	pass # STUB: Virtual function
