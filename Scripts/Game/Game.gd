extends Node2D

# Путь к сцене главного меню
const MAIN_MENU_PATH = "res://Scenes/UI/MainMenu/MainMenu.tscn"

# Переменные для игры
var score = 0

func _ready():
	# Инициализация игры
	reset_game()

func _process(delta):
	# Основной игровой цикл
	pass

func reset_game():
	# Сброс игры к начальному состоянию
	score = 0
	update_score_display()

func update_score_display():
	# Обновление отображения счета
	$HUD/ScoreLabel.text = "Счет: " + str(score)

func add_score(points):
	# Добавление очков к счету
	score += points
	update_score_display()

func _on_pause_button_pressed():
	# Пауза игры
	get_tree().paused = true
	$HUD/PauseMenu.visible = true
	$HUD/PauseMenu/VBoxContainer/ResumeButton.grab_focus()

func _on_resume_button_pressed():
	# Возобновление игры
	get_tree().paused = false
	$HUD/PauseMenu.visible = false

func _on_main_menu_button_pressed():
	# Возврат в главное меню
	get_tree().paused = false
	get_tree().change_scene_to_file(MAIN_MENU_PATH)
