extends Control

var current_scene
var esc_on:bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	esc_on = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_scene = get_tree().get_current_scene()
	if Input.is_action_just_pressed("ESC") and current_scene.name != "menu":
		if not esc_on:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			esc_on = true
			visible = true
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
			esc_on = false
			visible = false
	
# Pulsante per cambiare scena (main)
func _on_button_pressed() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

# Pulsante per cambiare scena (menu)
func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu_ui/menu.tscn")
