extends Node3D
@onready var camera_3d: Camera3D = $Camera3D

@onready var floors: Node = $floors
var rng = RandomNumberGenerator.new()
var floors_ls
var random_vector


func _procedural():
	pass

#func is_node_visible(camera: Camera3D, node: Node3D) -> bool:
	#var node_pos_in_camera_space = camera.global_transform.basis.xform_inv(node.global_transform.origin - camera.global_transform.origin)
	#if node_pos_in_camera_space.z <= 0:
		#return false  # Fuori dalla parte frontale del frustum
#
	#var half_fov = deg2rad(camera.fov / 2.0)
	#var aspect = camera.aspect
	#var tan_half_fov = tan(half_fov)
#
	#var x_limit = node_pos_in_camera_space.z * tan_half_fov * aspect
	#var y_limit = node_pos_in_camera_space.z * tan_half_fov
#
	#return abs(node_pos_in_camera_space.x) <= x_limit and abs(node_pos_in_camera_space.y) <= y_limit

#func get_visible_nodes(camera: Camera3D, nodes: Array) -> Array:
	#var visible_nodes = []
	#for node in nodes:
		#if is_node_visible(camera, node):
			#visible_nodes.append(node)
	#return visible_nodes


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	floors_ls = floors.get_children()
	
	
func _random_positioning():
	random_vector = Vector3(rng.randf_range(-1, 1), rng.randf_range(-1, 1), 0)
	for floor in floors_ls:
		if floor is StaticBody3D or floor is Node3D:
			floor.position = random_vector

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
