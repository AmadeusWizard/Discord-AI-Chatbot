FROM python:3.10

WORKDIR /usr/src/app

COPY . .

RUN python3.10 -m pip install -r requirements.txt

EXPOSE 5000    # Expose the port 5000 for the HTTP server

# Install the Flask package
RUN pip install Flask

# Set the appropriate port for the HTTP server to listen to
ENV PORT=5000

# Start the HTTP server
CMD ["python", "main.py"]
