extends StaticBody3D

@onready var collision_shape_3d: CollisionShape3D = $CollisionShape3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body != collision_shape_3d and body.name == "player":
		print("StickyFloor")
		GameManager.player_sticked.emit()
