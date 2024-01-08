FROM python:3.10

WORKDIR /usr/src/app

COPY . .

RUN python3.10 -m pip install -r requirements.txt

CMD ["python", "main.py"]

EXPOSE 80
EXPOSE 8080
EXPOSE 3000
