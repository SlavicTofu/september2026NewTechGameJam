extends State
class_name EnemyWanderState

@export var enemy : Enemy

var wander_interval
var wander_direction


func randomize_wander():
	wander_interval = randf_range(1, enemy.wander_interval)
	wander_direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()


func _enter() -> void:
	randomize_wander()
	
	
func _exit() -> void:
	pass
	
	
func _update(_delta: float) -> void:
	if wander_interval > 0:
		wander_interval -= _delta
	else:
		randomize_wander()
	
	
func _physics_update(_delta: float) -> void:
	if enemy:
		enemy.velocity = wander_direction * enemy.move_speed
	if enemy.player:
		var direction = enemy.player.global_position - enemy.global_position
		if direction.length() < enemy.follow_distance:
			transitioned.emit(self, "follow")
