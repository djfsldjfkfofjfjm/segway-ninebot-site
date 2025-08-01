# M3 95C MAX - Модульная структура сайта

## Описание проекта
Этот проект представляет собой модульную версию сайта M3 95C MAX от Ninebot. Оригинальный сайт был разделен на отдельные секции для удобного управления и редактирования.

## Структура проекта

```
m3-95c-max/
├── index.html              # Главный файл сайта
├── server.py              # HTTP сервер для тестирования
├── sections/              # Папка с отдельными секциями
│   ├── product-images-pc.html   # Изображения для ПК
│   ├── product-images-mobile.html # Изображения для мобильных
│   └── swiper-carousel.html      # Слайдер с изображениями
├── assets/                # Ресурсы сайта
│   ├── css/              # Стили
│   ├── js/               # JavaScript файлы
│   └── images/           # Изображения
└── M3 95C MAX , 高端铅酸电摩新标杆_files/  # Оригинальные ресурсы
```

## Как запустить сайт

### Способ 1: Python HTTP сервер
```bash
python3 server.py
```
Затем откройте http://localhost:8000 в браузере

### Способ 2: Любой другой HTTP сервер
Например, с помощью Node.js http-server:
```bash
npx http-server -p 8000
```

## Особенности

1. **Модульная структура**: Каждая секция находится в отдельном файле
2. **Легкое управление**: Можно редактировать каждую секцию независимо
3. **Адаптивный дизайн**: Сохранены версии для ПК и мобильных устройств
4. **Динамическая загрузка**: Секции загружаются через JavaScript

## Редактирование секций

Для редактирования конкретной секции:
1. Откройте соответствующий файл в папке `sections/`
2. Внесите необходимые изменения
3. Сохраните файл
4. Обновите страницу в браузере

## Примечания

- Сайт использует абсолютные пути к некоторым ресурсам на ninebot.com
- Для полной автономности может потребоваться загрузка всех внешних ресурсов
- JavaScript файлы подключены для сохранения функциональности оригинального сайта