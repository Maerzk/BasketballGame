extends Area3D

func _on_body_entered(body):
	if body is RigidBody3D:
		print("entered area with a y velocity of ", body.linear_velocity.y )
		if body.linear_velocity.y < 0:
			Global.increase_score($"..".scoreValue)
			$AudioStreamPlayer3D.play()
			print("Score increased to: ", Global.score)
			print("_on_score_changed emitted")
