extends Augment


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	damage = 1
	cooldown =0.2
	can_attack = true
	equipped = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("attack"):
		attack()
