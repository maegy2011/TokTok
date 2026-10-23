# autoloads/event_bus.gd
extends Node

signal player_died
signal vehicle_crashed
signal checkpoint_reached(index: int)
signal score_changed(new_score: int)
signal level_completed(level_id: String)
signal speed_changed(speed: float)
