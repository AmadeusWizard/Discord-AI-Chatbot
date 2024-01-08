FROM nginx:stable-alpine
FROM python:bullseye
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["python", "main.py", "nginx", "-g", "daemon off;"]
