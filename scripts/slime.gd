extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_cast_2_drigth: RayCast2D = $RayCast2Drigth
@onready var ray_cast_2d_2_left: RayCast2D = $RayCast2D2left
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2_drigth.is_colliding():
		animated_sprite_2d.flip_h = true
		direction = -1
	if ray_cast_2d_2_left.is_colliding():
		animated_sprite_2d.flip_h = false
		direction = 1
	position.x += direction * SPEED * delta
	
