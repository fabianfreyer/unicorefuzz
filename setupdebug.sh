#!/bin/sh

echo "[+] cloning uDdbg"
git clone https://github.com/iGio90/uDdbg.git 
cd uDdbg || exit 1
git checkout 7881cf8207a94f6fa88c3d07b9c629037a2a850e || exit 1

# Got some issues with uDdbg requirements.txt - let's get the latest versions manually. Fingers crossed.
if [[ "$VIRTUAL_ENV" != "" ]]
then
  echo "[+] Installing dependencies in virtualenv"
  pip install prompt-toolkit inquirer termcolor capstone keystone hexdump keystone_engine tabulate
else
  echo "[+] Installing dependencies as user"
  pip install --user prompt-toolkit inquirer termcolor capstone keystone hexdump keystone_engine tabulate
fi

echo "[+] Done. Harness.py -d will now work. Have a nice day."
