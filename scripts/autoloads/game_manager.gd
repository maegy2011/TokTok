# autoloads/game_manager.gd
extends Node

signal scene_changed(scene_path: String)
signal game_paused(is_paused: bool)
signal race_started
signal race_finished(result: Dictionary)

var current_level: String = ""
var is_paused: bool = false
var race_time: float = 0.0
var is_racing: bool = false

var vehicle_speed_kmh: float = 0.0


func change_scene(path: String) -> void:
	current_level = path
	scene_changed.emit(path)
	get_tree().change_scene_to_file(path)


func set_paused(paused: bool) -> void:
	is_paused = paused
	get_tree().paused = paused
	game_paused.emit(paused)


func start_race() -> void:
	race_time = 0.0
	is_racing = true
	race_started.emit()


func finish_race(result: Dictionary) -> void:
	is_racing = false
	race_finished.emit(result)


func quit_game() -> void:
	get_tree().quit()
