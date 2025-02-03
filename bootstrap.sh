cd /home
git clone git@github.com:cdxker/barista-user.git barista
sudo useradd -m barista -s /bin/bash
sudo chown -R barista:barista /home/barista
sudo usermod -d /home/barista/ barista
