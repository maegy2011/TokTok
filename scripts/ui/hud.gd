# scripts/ui/hud.gd
extends CanvasLayer

@onready var speed_label: Label = $SpeedLabel
@onready var time_label: Label = $TimeLabel
@onready var score_label: Label = $ScoreLabel

func update_speed(speed: float) -> void:
	speed_label.text = "السرعة: %d كم/س" % int(speed)

func update_time(t: float) -> void:
	var m := int(t) / 60
	var s := int(t) % 60
	time_label.text = "الوقت: %02d:%02d" % [m, s]

func update_score(n: int) -> void:
	score_label.text = "النجوم: %d" % n
