extends StaticBody3D

signal player_bounced

# Called when the node enters the scene tree for the first time.
func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.name == "player":
		GameManager.player_jump_higher.emit()
