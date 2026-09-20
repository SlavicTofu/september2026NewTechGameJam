
extends Node
class_name Augment
var equipped: bool
var can_attack : bool
var cooldown :int
var damage : int
@onready var box = $Area2D
@onready var sprite =$Animatedsprite2d
@onready var timer = $cooldown
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.timeout.connect(cooldown_over)
	
	
	
func cooldown_over():
	can_attack = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func attack():
	
	if can_attack:
		var hits = box.get_overlapping_bodies()
		sprite.play()
		for node in hits:
			if node.is_in_group("Enemies"):
				pass
				#TODO add enemy damage taking
			else:pass
			
		can_attack = false
		timer.start(cooldown)
		
