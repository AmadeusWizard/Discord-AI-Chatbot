import sys
import os

def load_command():
    os.system('./load_uptime.py')

if __name__ == '__main__':
    if len(sys.argv) < 2 or sys.argv[1].lower() != 'load':
        print('Neznámý příkaz. Použijte "load" pro spuštění aplikace.')
    else:
        load_command()