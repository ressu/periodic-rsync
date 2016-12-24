#!/bin/sh

rsync \
  -vrmlty --delete-delay --delay-updates --delete-excluded \
  -e "/usr/bin/sshpass -p${PASSWORD} /usr/bin/ssh -o ServerAliveInterval=60 -o StrictHostKeyChecking=no" \
  ${SOURCE} /data/ ${TARGET}
