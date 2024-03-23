import requests
import time

# Set the URL of the server to test the speed against
url = 'https://www.remode.cz'

# Set the number of bytes to download
bytes_to_download = 100000000

# Initialize the start time
start_time = time.time()

# Download the file
response = requests.get(url, stream=True)

# Calculate the speed
speed = bytes_to_download / (time.time() - start_time)

# Print the speed
print("Speed: {:.2f} bytes per second".format(speed))