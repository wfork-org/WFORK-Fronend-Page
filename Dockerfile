# Базовый образ — Nginx
FROM nginx:alpine

# Удаляем стандартную страницу nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем HTML и видео в корень веб-контента
COPY index.html /usr/share/nginx/html/
COPY video.mp4 /usr/share/nginx/html/

# Контейнер слушает порт 80
EXPOSE 80
