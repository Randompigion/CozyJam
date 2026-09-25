extends Sprite2D
var somethingin = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	somethingin = true
	%Label.visible = true
	
	#somethingin == true and Input.is_action_just_pressed("Interact")
		# Do something
	#queue_free()

func _on_area_2d_body_exited(body: Node2D) -> void:
	%Label.visible = false
