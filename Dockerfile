# Используем официальный образ nginx
FROM nginx:alpine

# Копируем кастомную конфигурацию nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Копируем статические файлы приложения
COPY html/ /usr/share/nginx/html/

# Открываем порт 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]