# Проект MaksimkaFindGirls

## Описание
Игровой проект на Godot Engine.

## Структура проекта
```
|-- Assets/               - Ресурсы проекта
|   |-- Sprites/          - Спрайты и текстуры
|   |-- Audio/            - Аудио файлы
|   |-- Fonts/            - Шрифты
|   |-- UI/               - Ресурсы интерфейса
|   |   |-- MainMenu/     - Ресурсы главного меню
|   |-- Game/             - Игровые ресурсы
|-- Scenes/               - Игровые сцены
|   |-- UI/               - Сцены интерфейса
|   |   |-- MainMenu/     - Сцены главного меню
|   |-- Game/             - Игровой процесс
|   |   |-- Player/       - Сцены персонажей
|-- Scripts/              - Скрипты
|   |-- UI/               - Скрипты интерфейса
|   |   |-- MainMenu/     - Скрипты главного меню
|   |-- Game/             - Скрипты игрового процесса
|   |   |-- Player/       - Скрипты игрока
|-- Docs/                 - Документация
|-- .vscode/              - Настройки VS Code
```

## Основные компоненты

### Главное меню
Находится в `Scenes/UI/MainMenu/MainMenu.tscn`
- Начать игру
- Настройки
- Выход

### Игровая сцена
Находится в `Scenes/Game/Game.tscn`
- Основной игровой процесс
- Управление персонажем
- Подсчет очков

### Персонаж игрока
Находится в `Scenes/Game/Player/Player.tscn`
- Управление движением
- Взаимодействие с игровым миром

## Настройка окружения
1. Установите [Godot Engine](https://godotengine.org/)
2. Установите Visual Studio Code и рекомендуемые расширения:
   - Godot Tools
   - C# Tools для Godot
   - EditorConfig
   - GitLens (опционально)
   - Code Spell Checker (опционально)

## Запуск проекта
- Через VS Code: Нажмите `Ctrl+Shift+B` для запуска проекта через задачу по умолчанию
- Или используйте команду в терминале: `godot --path /путь/к/проекту`

## Отладка
Проект настроен для отладки с использованием расширения Godot Tools.
Используйте F5 для запуска отладки или настройте свои параметры в файле .vscode/launch.json.
