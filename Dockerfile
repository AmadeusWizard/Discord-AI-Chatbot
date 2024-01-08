FROM python:3.8
FROM nginx:1.13
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
EXPOSE 8080tcp
EXPOSE 8080/udp
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1
