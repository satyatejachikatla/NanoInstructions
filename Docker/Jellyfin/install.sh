#!/usr/bin/bash

docker run -d \
 --name jellyfin \
 --user 1000:1000 \
 --net=host \
 --volume /media/nano/DockerWorkspace/jellyfin-config:/config \
 --volume /media/nano/DockerWorkspace/jellyfin-cache:/cache \
 --mount type=bind,source=/media/nano/Backup,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin