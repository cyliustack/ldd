#!/usr/bin/env python3

import os
import subprocess

if __name__ == '__main__':
    print('Begining of installation of required packages...')
    SUDO=''
    if int(os.system('command -v sudo 1>/dev/null')) == 0:
        SUDO = 'sudo '
    subprocess.call(SUDO+'apt update -y', shell=True)
    subprocess.call(SUDO+'apt update --fix-missing -y', shell=True)
    subprocess.call(SUDO+'apt install -y build-essential', shell=True) 
    subprocess.call(SUDO+'apt depends build-essential', shell=True) 
    subprocess.call(SUDO+'apt install -y flex bison libncurses-dev', shell=True) 
    subprocess.call(SUDO+'apt clean', shell=True)
    print('Ending of installation.')


