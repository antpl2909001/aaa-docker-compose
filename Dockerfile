FROM python:3.8
ENV FLASK_APP=app

# создаем рабочую директорию и скачиваем загружаем необходимые файлы
WORKDIR app
COPY . /app

# устанавливаем зависимости
RUN pip install -r requirements.txt
# указываем на необходимость открыть 8080 порт
EXPOSE 8080

# при запуске контейнера выполняем команду
CMD python3 server.py
