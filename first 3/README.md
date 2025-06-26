# Segway/Ninebot Website

Полный сайт с главной страницей и 12 моделями электротранспорта.

## Структура проекта

```
/
├── segway_cleaned.html          # Главная страница
├── E125S/                      # Страница модели E125S
├── E300SE/                     # Страница модели E300SE
├── e110s/                      # Страница модели E110S
├── f2z 110/                    # Страница модели F2z 110
├── f2z 110 max/                # Страница модели F2z 110 MAX
├── m3-95c-max/                 # Страница модели M3 95C MAX
├── m95c/                       # Страница модели M95C
├── mmax2-110p/                 # Страница модели MMax2 110P
├── q90/                        # Страница модели Q90
├── v30c/                       # Страница модели V30C
├── xafari/                     # Страница модели Xafari
└── xyber/                      # Страница модели Xyber
```

## Деплой на Vercel

### Вариант 1: Через GitHub (рекомендуется)

1. Дождитесь полной загрузки репозитория на GitHub
2. Перейдите на [vercel.com](https://vercel.com)
3. Нажмите "New Project"
4. Импортируйте репозиторий `segway-ninebot-site`
5. Настройки деплоя:
   - Framework Preset: `Other`
   - Root Directory: `.` (оставить пустым)
   - Build Command: оставить пустым
   - Output Directory: `.` (оставить пустым)
6. Нажмите "Deploy"

### Вариант 2: Через Vercel CLI

```bash
npm i -g vercel
vercel
```

## Конфигурация для Vercel

Создайте файл `vercel.json`:

```json
{
  "rewrites": [
    {
      "source": "/",
      "destination": "/segway_cleaned.html"
    }
  ]
}
```

## Важно

- Главная страница: `segway_cleaned.html`
- Все ссылки настроены для работы с относительными путями
- Сайт полностью статический, не требует сборки

## Демо

После деплоя сайт будет доступен по адресу: `https://your-project.vercel.app`

## Лицензия

Все права защищены © Segway-Ninebot