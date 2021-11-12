#!/bin/bash
#PWD=`pwd`
#sed -i 's/pwd_set/'$PWD'/g' ServiceFiles/sendinflux.service
#sed -i 's/pwd_set/'$PWD'/g' sethost.sh
#sed -i 's/server_ip/192.168.0.146/g' sethost.sh

sudo mkdir /hamonize_monitoring
sudo cp ./* /hamonize_monitoring/
sudo cp ./ServiceFiles/sendinflux.service /etc/systemd/system/
sudo cp ./ServiceFiles/sendinflux.timer /etc/systemd/system/

sudo systemctl enable /etc/systemd/system/sendinflux.service
sudo systemctl enable /etc/systemd/system/sendinflux.timer

sudo systemctl start sendinflux.timer
