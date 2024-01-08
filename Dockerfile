FROM nginx:stable-alpine
COPY . /usr/share/nginx/html
EXPOSE 80
WORKDIR /app
CMD ["nginx", "-g", "daemon off;"]
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "main.py"]
