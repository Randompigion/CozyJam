extends CharacterBody2D


const SPEED = 2000.0
const JUMP_VELOCITY = -2000.0



func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		%AnimatedSprite2D.play("JumpStart")
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
		if Input.is_action_pressed("Left"):
			%AnimatedSprite2D.flip_h = true
		else:
			%AnimatedSprite2D.flip_h = false
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if is_on_floor() and direction:
			%AnimatedSprite2D.play("Walk")
	elif is_on_floor():
			%AnimatedSprite2D.play("Idle")
	else:
			%AnimatedSprite2D.play("Spin")

	move_and_slide()
