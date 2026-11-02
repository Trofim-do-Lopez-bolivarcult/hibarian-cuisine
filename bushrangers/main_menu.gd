extends Control

@onready var play_button: Button = $MenuButtons/PlayButton
@onready var settings_button: Button = $MenuButtons/SettingsButton
@onready var quit_button: Button = $MenuButtons/QuitButton

func _ready() -> void:
	play_button.pressed.connect(_on_play_pressed)
	settings_button.pressed.connect(_on_settings_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://world_3d.tscn")

func _on_settings_pressed() -> void:
	print("Настройки пока не готовы")

func _on_quit_pressed() -> void:
	get_tree().quit()
