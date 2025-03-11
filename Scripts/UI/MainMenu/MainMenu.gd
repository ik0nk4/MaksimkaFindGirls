extends Control

# Путь к основной сцене игры
const GAME_SCENE_PATH = "res://Scenes/Game/Game.tscn"

func _ready():
	# Автофокус на кнопку "Начать игру" при открытии меню
	$ButtonsContainer/StartButton.grab_focus()

func _on_start_button_pressed():
	# Переход к основной игровой сцене
	get_tree().change_scene_to_file(GAME_SCENE_PATH)

func _on_settings_button_pressed():
	# Здесь будет переход к настройкам
	# Можно реализовать как отдельную сцену или как всплывающее окно
	print("Открыть настройки")

func _on_exit_button_pressed():
	# Выход из игры
	get_tree().quit()
