FROM python:3.10

WORKDIR /usr/src/app

COPY . .

RUN python3.10 -m pip install -r requirements.txt

RUN apt-get update && apt-get install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["sh", "-c", "nginx && python main.py"]

EXPOSE 80
