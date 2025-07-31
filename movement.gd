extends CharacterBody2D
 
# rn the player is using an area 2d so that it dies when it touches the wall
# if we don't want that replace the area 2d with a collisionshape 2d

# speed in pixels/sec
var player_speed = 500 

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * player_speed


func _physics_process(delta):
	get_input()
	move_and_slide()

# kill the player if they touch a wall
func _on_area_2d_body_entered(body):
	queue_free()
