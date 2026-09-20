extends Node2D

@onready var enemy = preload("res://scenes/entities/enemy.tscn")
@onready var current_level=0
@onready var monster_dict={
	1:5,
	2:10,
	3:20,
	4:30,
	5:50
}
@onready var rand=RandomNumberGenerator.new()
@onready var dead_enemies=0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("level") # Replace with function body.

func enemy_death():
	dead_enemies+=1
	if dead_enemies==monster_dict[current_level]:
		$inBetweenWaves.start()
		dead_enemies=0
	get_tree().call_group("player", "award_points", 200)

func spawn_enemies():
	for i in range(monster_dict[current_level]):
		var m = enemy.instantiate()
		var spawn_length = $SpawnHolder.get_child_count()-1
		var rand_num = rand.randi_range(0,spawn_length)
		var spawn_position = $SpawnHolder.get_child(rand_num).position
		m.position = spawn_position
		add_child(m)
		await get_tree().create_timer(2.0).timeout



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
