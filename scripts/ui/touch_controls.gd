# scripts/ui/touch_controls.gd
extends CanvasLayer

@onready var left_btn: Button = $Left
@onready var right_btn: Button = $Right
@onready var go_btn: Button = $Go

func _ready() -> void:
	left_btn.button_down.connect(func(): Input.action_press("steer_left"))
	left_btn.button_up.connect(func(): Input.action_release("steer_left"))
	right_btn.button_down.connect(func(): Input.action_press("steer_right"))
	right_btn.button_up.connect(func(): Input.action_release("steer_right"))
	go_btn.button_down.connect(func(): Input.action_press("accelerate"))
	go_btn.button_up.connect(func(): Input.action_release("accelerate"))
