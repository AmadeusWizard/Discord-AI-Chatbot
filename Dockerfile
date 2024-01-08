FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
EXPOSE 8080tcp
EXPOSE 8080/udp
