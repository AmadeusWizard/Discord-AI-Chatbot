FROM python:3.10

WORKDIR /usr/src/app

COPY . .

RUN python3.10 -m pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]
