extends CollisionShape3D

@onready var mesh_instance_3d: MeshInstance3D = $"../MeshInstance3D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sphere_mesh = mesh_instance_3d.mesh as SphereMesh
	if sphere_mesh:
		var radius = sphere_mesh.get_radius()
		shape.radius = radius
		print("Sphere mesh detected")
	else:
		print("Error: The MeshInstance3D does not have a SphereMesh.")
