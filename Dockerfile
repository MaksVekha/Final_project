# Використовуємо офіційний образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# Копіюємо файл з залежностями у контейнер
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь код проєкту у контейнер
COPY . .

# Відкриваємо порт, на якому буде працювати Django
EXPOSE 8000

# Команда для запуску Django сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
