extends CharacterBody2D

@onready var sprite: Sprite2D = $Sprite2D

const SPEED = 500.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if direction >0 :
		sprite.flip_h= true
	if direction < 0:
		sprite.flip_h= false 
		
	
		
		
	
		
		
		
		
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D):
	queue_free()
