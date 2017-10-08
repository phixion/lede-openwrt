#!/bin/sh
# collect installed openwrt packages
# reinstall after update with opkg update && opkg install `cat /etc/config/packlist.txt` && reboot

opkg list-installed | awk '{print $1}' | sed ':M;N;$!bM;s#\n# #g' > /etc/config/packlist.txt
