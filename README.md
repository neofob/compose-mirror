# A Swiss Army Knife of local mirroring repository for Ubuntu and Rocky Linux
*Traefik will redirect the local incoming requests to local Ubuntu and Rocky Linux.*

```text

Requests --> Traefik --> apt-mirror-server (us.archive.ubuntu.com, archive.ubuntu.com)
                |------> rpm-mirror-server (mirror.cs.vt.edu)
```


### DNS
Set your DNS entries of these domains to where Traefik is running. You get the gist of it.
```
# Traefik runs on 192.168.42.42
192.168.42.42 us.archive.ubuntu.com
192.168.42.42 archive.ubuntu.com
192.168.42.42 mirror.cs.vt.edu
```

### Quick start
Assume that you have the repository of us.archive.ubuntu.com downloaded using [apt-mirror-docker][0]
```bash
# Adjust your settings in .env as needed
# Generate traefik.yml file from environment variables in .env
make
# This will spin up traefik and apt-mirror-server services
docker-compose up -d
```

Now all traffic to us.archive.ubuntu.com and archive.ubuntu.com will be routed properly to apt-mirror-server.


### References
* https://github.com/neofob/apt-mirror-docker (`neofob-ng` branch)
* https://github.com/neofob/compose-rpm-mirror
* https://github.com/neofob/compose-traefik


[0]: https://github.com/neofob/apt-mirror-docker
