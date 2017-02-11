#!/bin/bash

# rsync home backup

rsync --delete -azvv --exclude={"/home/djwilcox/docker/*","/home/djwilcox/libvirt/*"} /home/djwilcox root@192.168.1.25::NetBackup/djwilcox/
