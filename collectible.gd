extends Area2D

# destroy the collectible when the player touches it
func _on_area_entered(area):
	print("collected!")
	queue_free()
