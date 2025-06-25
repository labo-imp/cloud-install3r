#!/bin/bash
# # fecha revision   2025-06-25  04:45

logito="ins_pyworld_inicial.txt"
# si ya corrio esta seccion, exit
[ -e "/home/$USER/log/$logito" ] && exit 0

# requiero que el system este instalado
[ ! -e "/home/$USER/log/ins_system.txt" ] && exit 1


source  /home/$USER/cloud-install/sh/common.sh

# Instalo Python SIN  Anaconda, Miniconda, etc-------------------------------
# Documentacion  https://docs.python-guide.org/starting/install3/linux/

export PATH="$PATH:/home/$USER/.local/bin"
echo  "export PATH=/home/\$USER/.local/bin:\$PATH"  >>  /home/$USER/.bashrc
chmod u+x /home/$USER/.bashrc
source /home/$USER/.bashrc 


sudo  apt-get update


# Python 3.11
cd
wget https://www.python.org/ftp/python/3.11.13/Python-3.11.13.tgz
tar xzvf Python-3.11.13.tgz
cd Python-3.11.13
./configure
make
sudo make install
cd
rm /home/$USER/Python-3.11.13.tgz
sudo rm -rf /home/$USER/Python-3.11.13


# Python 3.12
cd
wget https://www.python.org/ftp/python/3.12.10/Python-3.12.10.tgz
tar xzvf Python-3.12.10.tgz
cd Python-3.12.10
./configure
make
sudo make install
cd
rm /home/$USER/Python-3.12.10.tgz
sudo rm -rf /home/$USER/Python-3.12.10


# Python 3.13
cd
wget https://www.python.org/ftp/python/3.13.3/Python-3.13.3.tgz
tar xzvf Python-3.13.3.tgz
cd Python-3.13.3
./configure
make
sudo make install
cd
rm /home/$USER/Python-3.13.3.tgz
sudo rm -rf /home/$USER/Python-3.13.3


# Python 3.13
sudo  DEBIAN_FRONTEND=noninteractive  apt-get --yes install \
        python3-pip  python3-dev  ipython3  python3.13-venv

python3  /home/$USER/cloud-install/py/test_python.py  /home/$USER/log/ins_python.txt
[ ! -e "/home/$USER/log/ins_python.txt" ] && exit 1



# actualizo  pip
pip3 install --upgrade pip
pip3 install setuptools


# creo el Virtual Environment
cd
python3     -m venv  .venv
python3.12  -m venv  .venv312
python3.11  -m venv  .venv311

source  /home/$USER/.venv/bin/activate

# actualizo  pip
pip3 install --upgrade pip
pip3 install setuptools

bitacora   "Python"

# instalo paquetes iniciales de Python
pip3 install  kaggle  zulip

bitacora   "python packages"

# grabo
fecha=$(date +"%Y%m%d %H%M%S")
echo $fecha > /home/$USER/log/$logito
