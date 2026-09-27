extends Sprite2D
## A simple movable sprite, our first step toward a player character.

@export var speed: float = 200.0


func _ready() -> void:
	print("Crystal Saga: sprite loaded at ", position)


func _process(delta: float) -> void:
	var direction := _get_input_direction()

	if direction != Vector2.ZERO:
		direction = direction.normalized()

	position += direction * speed * delta


func _get_input_direction() -> Vector2:
	return Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down"),
	)
