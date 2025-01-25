extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

var is_on_spikes = false

func _ready() -> void:
	GameManager.player_sticked.connect(_on_sticky_floor_stucked)
	GameManager.player_jump_higher.connect(_on_bubble_floor)
	GameManager.player_destroy_platform.connect(_on_destroyable_floor)
	
func rotate_character() -> void:
	# Rotate 180 degrees on X-axes
	if is_on_spikes:
		rotation_degrees.x += 180
	else:
		rotation_degrees.x -= 180
	is_on_spikes = not is_on_spikes
	

func _on_sticky_floor_stucked():
	pass
	
func _on_bubble_floor():
	print("Sborro")
	velocity.y = 6  
	
func _on_destroyable_floor():
	pass


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	if is_on_floor():
		velocity.y = JUMP_VELOCITY
		rotate_character()
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Vector3(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"), 0, 0)
	var direction := input_dir.normalized()

	if direction:
		velocity.x = direction.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	velocity.z = 0 # No Z-axis movment

	move_and_slide()
