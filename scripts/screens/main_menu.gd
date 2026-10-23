# scripts/screens/main_menu.gd
extends Control

func _ready() -> void:
	$VBoxContainer/StartButton.pressed.connect(_on_start)
	$VBoxContainer/QuitButton.pressed.connect(_on_quit)

func _on_start() -> void:
	GameManager.change_scene("res://scenes/levels/level_01.tscn")

func _on_quit() -> void:
	GameManager.quit_game()
