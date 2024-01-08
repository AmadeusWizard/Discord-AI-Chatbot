FROM nginx:stable-alpine
FROM python:bullseye
RUN pip install --no-cache-dir -r requirements.txt
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["python", "main.py", "nginx", "-g", "daemon off;"]
