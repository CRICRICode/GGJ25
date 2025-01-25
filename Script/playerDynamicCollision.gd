extends CollisionShape3D
@onready var mesh_instance_3d: MeshInstance3D = $"../MeshInstance3D"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	shape.radius = mesh_instance_3d.mesh.radius
	shape.height = mesh_instance_3d.mesh.height
