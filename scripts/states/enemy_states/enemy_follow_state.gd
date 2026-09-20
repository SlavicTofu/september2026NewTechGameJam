extends State
class_name EnemyFollowState

@export var enemy : Enemy

func _enter() -> void:
	pass
	
	
func _exit() -> void:
	pass
	
	
func _update(_delta: float) -> void:
	pass
	
	
func _physics_update(_delta: float) -> void:
	var direction = enemy.player.global_position - enemy.global_position
	if direction.length() > enemy.attack_distance and direction.length() < enemy.follow_distance:
		enemy.velocity = direction.normalized() * enemy.move_speed
	elif enemy.attack_distance > direction.length():
		enemy.velocity = Vector2.ZERO
		transitioned.emit(self, "attack")
	else:
		transitioned.emit(self, "wander")
