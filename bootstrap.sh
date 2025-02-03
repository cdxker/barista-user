cd /home
git clone https://github.com/cdxker/barista-user barista
sudo useradd -m barista -s /bin/bash
sudo chown -R barista:barista /home/barista
sudo usermod -d /home/barista/ barista
