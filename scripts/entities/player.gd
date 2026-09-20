extends Entity
class_name Player

var weapon: Node

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * move_speed
	print(velocity)

func _physics_process(_delta):
	get_input()
	match poll_direction():
		Direction.NORTH: sprite.animation  = "up"
		Direction.NORTHEAST: sprite.animation = "right"
		Direction.NORTHWEST:sprite.animation = "left"
		Direction.EAST:sprite.animation = "right"
		Direction.SOUTH:sprite.animation = "down"
		Direction.SOUTHEAST:sprite.animation = "right"
		Direction.SOUTHWEST:sprite.animation = "left"
		Direction.WEST:sprite.animation= "left"
	if velocity.length() > 0:
		sprite.play()
	else: 
		sprite.stop()
	move_and_slide()
	
	
func take_damage():
	pass
	
	
func attack():
	weapon.attack()
