#!/bin/bash

echo "=== ПРОВЕРКА ПРОГРЕССА ЗАГРУЗКИ GIT ==="
echo ""

# Проверяем активен ли процесс
PID=$(ps aux | grep "git push" | grep -v grep | awk '{print $2}' | head -1)

if [ -z "$PID" ]; then
    echo "❌ Git push НЕ ЗАПУЩЕН!"
    echo ""
    echo "Возможно загрузка завершена. Проверьте:"
    echo "https://github.com/djfsldjfkfofjfjm/segway-ninebot-site"
else
    echo "✅ Git push АКТИВЕН (PID: $PID)"
    echo ""
    
    # Проверяем сколько времени работает
    RUNTIME=$(ps -p $PID -o etime= | tr -d ' ')
    echo "⏱️  Время работы: $RUNTIME"
    echo ""
    
    # Проверяем активность CPU
    CPU=$(ps -p $PID -o %cpu= | tr -d ' ')
    echo "💻 Загрузка CPU: ${CPU}%"
    echo ""
    
    # Проверяем сетевую активность
    if lsof -p $PID 2>/dev/null | grep -q "ESTABLISHED"; then
        echo "🌐 Сетевое соединение: АКТИВНО"
    else
        echo "🌐 Сетевое соединение: Ожидание..."
    fi
    echo ""
    
    # Примерный прогресс (на основе времени)
    # Предполагаем что 1.7GB загружается примерно за 15 минут
    MINUTES=$(echo $RUNTIME | awk -F: '{print ($1*60)+$2}')
    PROGRESS=$((MINUTES * 100 / 15))
    if [ $PROGRESS -gt 100 ]; then PROGRESS=99; fi
    
    echo "📊 ПРИМЕРНЫЙ ПРОГРЕСС:"
    printf "["
    for i in {1..50}; do
        if [ $((i*2)) -le $PROGRESS ]; then
            printf "█"
        else
            printf "░"
        fi
    done
    printf "] ~${PROGRESS}%%\n"
    echo ""
    echo "⚠️  НЕ ВЫКЛЮЧАЙТЕ МАКБУК!"
    echo "Загрузка 1.7GB может занять 10-20 минут"
fi

echo ""
echo "Для повторной проверки запустите:"
echo "bash check_progress.sh"