# scripts/components/finish_flag.gd
extends Area2D

signal finished

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body is CharacterBody2D:
		finished.emit()
		AudioManager.play_sfx("finish")
		GameManager.finish_race({"stars": 0})
