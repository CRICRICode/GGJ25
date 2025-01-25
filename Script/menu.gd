extends Control
@onready var gui_menu: MarginContainer = $gui_menu
@onready var margin_container: MarginContainer = $MarginContainer


func _ready() -> void:
	gui_menu.visible = true
	margin_container.visible = false

func _on_play_pressed() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_options_pressed() -> void:
	gui_menu.visible = false
	margin_container.visible = true

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu_ui/menu.tscn")
