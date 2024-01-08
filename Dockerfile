FROM python:bullseye

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "main.py"]

EXPOSE 80/tcp
EXPOSE 80/udp

EXPOSE 8080/tcp
EXPOSE 8080/udp

EXPOSE 3000/tcp
EXPOSE 3000/udp
