# Docker Settings used

### Service settins

Ensured to set the docker service to only start after certain mount points are available

Edited following in /lib/systemd/system/docker.service
```
[Unit]
RequiresMountsFor=/media/nano/Backup /media/nano/DockerWorkspace
```
After that
```
systemctl daemon-reload 
systemctl restart docker.service
```
