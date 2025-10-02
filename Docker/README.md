# Docker Settings used

### Service settins

Ensured to set the docker service to only start after certain mount points are available

To do that enter overide conf
```
sudo systemctl edit docker.service
```

```
[Unit]                                                                                                                                          
RequiresMountsFor=/media/nano/DockerWorkspace /media/nano/Backup

[Service]
ExecStartPre=/bin/sleep 60   
```

After that
```
systemctl daemon-reload 
systemctl restart docker.service
```

### For Docker compose cmd

```
apt-get install docker-compose-plugin
```

### Ensure permission for the workspace drives to the docker

Simple hack (but needs to be reviewed for the security)
```
sudo chmod -R 0777 /media/nano/Backup
sudo chmod -R 0777 /media/nano/DockerWorkspace
```