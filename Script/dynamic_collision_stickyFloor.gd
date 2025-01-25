extends CollisionShape3D

@onready var mesh_instance_3d: MeshInstance3D = $"../MeshInstance3D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if shape and mesh_instance_3d:
		var aabb = mesh_instance_3d.get_aabb()
		shape.size = aabb.size
