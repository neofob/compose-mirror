# A Swiss Army Knife of local mirroring repository for Ubuntu and Rocky Linux
*Traefik will redirect the local incoming requests to local Ubuntu and Rocky Linux.*

```text

Requests -------------------> Traefik -------------> apt-mirror-server (us.archive.ubuntu.com)
                                 |-----------------> rpm-mirror-server (mirror.cs.vt.edu/pub/rocky)
```


### References
* https://github.com/neofob/apt-mirror-docker (`neofob-ng` branch)
* https://github.com/neofob/compose-rpm-mirror
* https://github.com/neofob/compose-traefik
