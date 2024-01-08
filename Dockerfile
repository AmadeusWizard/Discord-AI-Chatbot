FROM python:3.8
FROM nginx:stable-alpine
WORKDIR /app
COPY . /usr/share/nginx/html
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
