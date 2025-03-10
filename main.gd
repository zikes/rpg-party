extends Node2D

@onready var Player = $Character

var speed = 5

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		Player.position.y -= speed
	if Input.is_action_pressed("ui_down"):
		Player.position.y += speed
	if Input.is_action_pressed("ui_left"):
		Player.position.x -= speed
	if Input.is_action_pressed("ui_right"):
		Player.position.x += speed
