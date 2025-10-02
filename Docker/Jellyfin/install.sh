#!/usr/bin/bash

docker run -d \
 --name jellyfin \
 --user 1000:1000 \
 --net=host \
 --env JELLYFIN_PublishedServerUrl=http://nano-desktop\
 --add-host 'host.docker.internal:host-gateway'\
 -p 8096:8096 \
 -p 8920:8920 \
 --volume /media/nano/DockerWorkspace/jellyfin-config:/config \
 --volume /media/nano/DockerWorkspace/jellyfin-cache:/cache \
 --mount type=bind,source=/media/nano/Backup,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin