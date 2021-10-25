extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var rollSpeed = 100
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _integrate_forces(state):
	if Input.is_action_just_pressed("jump"):
		if test_motion(Vector2.DOWN):
			set_axis_velocity(Vector2.UP*300)
		else:
			$poot.restart()
			set_axis_velocity(Vector2.UP.rotated(rotation)*500)
			$poot.emitting = true
	var rotDir = 0
	if Input.is_action_pressed("ui_left"):
		rotDir -= 1
	if Input.is_action_pressed("ui_right"):
		rotDir += 1
	applied_torque = rotDir * 2500
	pass
