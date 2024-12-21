extends Node

@onready var player: AudioStreamPlayer = $AudioStreamPlayer


	
func _ready():
	player.play()

func _process(delta):
	pass

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Maps/world.tscn")

func _on_button_2_pressed():
	get_tree().quit()
	
func _on_button_3_pressed():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func _on_nivel_1_pressed():
	get_tree().change_scene_to_file("res://Maps/world.tscn")

func _on_nivel_2_pressed():
	get_tree().change_scene_to_file("res://Maps/world_2.tscn")

func _on_nivel_3_pressed():
	get_tree().change_scene_to_file("res://Maps/world_3.tscn")

func _on_nivel_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Maps/world_4.tscn")
