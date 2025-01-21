#!/bin/bash

umask ${UMASK}

if [ "$1" = "version" ]; then
  ./alist version
else
  if [ "$RUN_ARIA2" = "true" ]; then
    chown -R ${PUID}:${PGID} /opt/aria2/
    exec su-exec ${PUID}:${PGID} nohup aria2c \
      --enable-