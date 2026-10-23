# scripts/screens/celebration.gd
extends Control

func _ready() -> void:
	$ReplayButton.pressed.connect(func(): GameManager.change_scene("res://scenes/levels/level_01.tscn"))
	$MenuButton.pressed.connect(func(): GameManager.change_scene("res://scenes/screens/main_menu.tscn"))
