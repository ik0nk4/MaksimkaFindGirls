extends CharacterBody2D

# Параметры игрока
@export var speed = 300.0
@export var jump_velocity = -400.0

# Гравитация и физика
var gravity = 980

func _physics_process(delta):
	# Добавляем гравитацию только если не на полу
	if not is_on_floor():
		velocity.y += gravity * delta

	# Управление прыжком
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity

	# Получаем направление движения
	var direction = Input.get_axis("ui_left", "ui_right")

	# Обрабатываем движение по горизонтали
	if direction:
		velocity.x = direction * speed
		# Поворачиваем спрайт в нужную сторону
		$Sprite2D.flip_h = direction < 0
	else:
		# Добавляем замедление при отсутствии направления
		velocity.x = move_toward(velocity.x, 0, speed)

	# Применяем движение
	move_and_slide()

	# Проверяем падение в бездну
	if position.y > 1000:
		reset_position()

func reset_position():
	# Сбрасываем позицию игрока
	position = Vector2(100, 100)
	velocity = Vector2.ZERO
