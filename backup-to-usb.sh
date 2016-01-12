#!/bin/bash

# rsync system backup to external usb drive
#==========================================

# backup system exclude docker devicemapper
sudo rsync --delete -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","/var/lib/docker/devicemapper/"} /* /run/media/djwilcox/rsync

