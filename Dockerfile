# Базовый образ — Nginx
FROM nginx:alpine

# Удалим стандартную страницу nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем наш сайт в директорию Nginx
COPY index.html /usr/share/nginx/html/

# Контейнер будет слушать порт 80
EXPOSE 80
