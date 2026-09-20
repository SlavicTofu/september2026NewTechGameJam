
extends Node
class_name Augment

@export var equipped: bool
@export var can_attack : bool
@export var cooldown :int
@export var damage : int

@onready var box = $Area2D
@onready var sprite =$Animatedsprite2d
@onready var timer = $cooldown

func _ready() -> void:
	timer.timeout.connect(cooldown_over)
	
	
func cooldown_over():
	can_attack = true
	
	
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
		
