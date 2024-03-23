import os
import sched
import time
import datetime
import gc

def memory_optimization():
    os.system('sync; echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a')
    gc.collect()
    print(f'[{datetime.datetime.now()}] Memory optimization completed successfully.')

s = sched.scheduler(time.time, time.sleep)

def schedule_mo():
    s.enterabs(time.time() + 15 * 60, 0, schedule_mo)
    memory_optimization()

schedule_mo()
s.run()