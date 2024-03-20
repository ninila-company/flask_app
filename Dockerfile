FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем переменную окружения для кодировки
ENV LANG C.UTF-8

# Устанавливаем рабочую директорию
WORKDIR /app

COPY . /app

RUN pip install -r requirement.txt

CMD [ "python3", "app.py" ]
