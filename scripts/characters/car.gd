# scripts/characters/car.gd
extends CharacterBody2D

class_name Car

@export var max_speed: float = 260.0
@export var acceleration: float = 180.0
@export var friction: float = 120.0
@export var steer_speed: float = 2.0
@export var steer_angle_max: float = 0.5

var speed: float = 0.0
var steer_input: float = 0.0
var throttle: float = 0.0

@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	steer_input = Input.get_axis("steer_left", "steer_right")
	throttle = Input.get_axis("brake", "accelerate")

	# Steering only when moving
	if abs(speed) > 10.0:
		rotation += steer_input * steer_speed * (speed / max_speed) * delta

	# Acceleration / braking
	if throttle > 0:
		speed = min(speed + acceleration * throttle * delta, max_speed)
	elif throttle < 0:
		speed = max(speed + acceleration * throttle * delta, -max_speed * 0.4)
	else:
		# friction
		if speed > 0:
			speed = max(speed - friction * delta, 0.0)
		elif speed < 0:
			speed = min(speed + friction * delta, 0.0)

	# Handbrake
	if Input.is_action_pressed("handbrake"):
		speed = move_toward(speed, 0.0, friction * 4.0 * delta)

	velocity = Vector2(0, -speed).rotated(rotation)
	move_and_slide()

	GameManager.vehicle_speed_kmh = abs(speed) * 0.1
	EventBus.speed_changed.emit(GameManager.vehicle_speed_kmh)

	if Input.is_action_just_pressed("horn"):
		AudioManager.play_sfx("horn")
