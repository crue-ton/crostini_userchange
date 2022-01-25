# user_change.sh #
A bash script that easily changes the username of your user on Crostini.

## WARNING! ##
This script has only been tested on Crostini containers running Debian and Arch. So if you are running on a different distro, and this does not work, please make an issue and we can try to make this compatible with your distro :) --crue-ton

## How do I run this? ##
- You need to enter Crosh doing `Ctrl + Alt + T` while one google chrome.
- Enter a terminal session by running:
```
vmc start termina
```
- Then login to the pengiun containter as root:
```
lxc exec penguin -- bash
```
- Clone this repo, then go into it.
```bash
git clone https://github.com/crue-ton/crostini_userchange
cd crostini_userchange
```
- Then Run:
```bash
bash user_change.sh
# MAKE SURE YOU RUN 'bash' and NOT 'sh', as it WILL NOT WORK!
```
- Follow the steps, and then shutdown ASAP, you should get a question asking if you want to shutdown.
- If you don't want to shutdown as soon as it is down (for some reason) run this when you want to shutdown:
```bash
shutdown -h now
```
