# scripts/levels/level_01.gd
extends Node2D

@onready var car: CharacterBody2D = $Car
@onready var camera: Camera2D = $Camera2D
@onready var hud: CanvasLayer = $HUD

var score: int = 0

func _ready() -> void:
	GameManager.start_race()
	camera.make_current()
	for star in get_tree().get_nodes_in_group("stars"):
		star.collected.connect(_on_star_collected)
	var flag = get_node_or_null("FinishFlag")
	if flag:
		flag.finished.connect(_on_finished)

func _on_star_collected() -> void:
	score += 1
	hud.update_score(score)
	EventBus.score_changed.emit(score)

func _on_finished() -> void:
	GameManager.finish_race({"stars": score})
	GameManager.change_scene("res://scenes/screens/celebration.tscn")

func _process(delta: float) -> void:
	camera.global_position = car.global_position
	if GameManager.is_racing:
		GameManager.race_time += delta
		hud.update_time(GameManager.race_time)
	hud.update_speed(GameManager.vehicle_speed_kmh)
