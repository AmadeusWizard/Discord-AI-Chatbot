import gc
import time
from datetime import datetime

def optimize_memory():
    # Trigger garbage collection to optimize memory
    gc.collect()

def log_task_completion():
    # Log successful task completion with date and time
    now = datetime.now()
    current_time = now.strftime("%H:%M:%S")
    current_date = now.strftime("%Y-%m-%d")
    print(f"Task completed successfully at {current_time} on {current_date}")

# Main program loop
while True:
    optimize_memory()
    log_task_completion()
    time.sleep(900)  # 900 seconds = 15 minutes