# Docker post installation

## Systemd setup

```bash
sudo systemctl enable docker
```

## Network listen

```bash
cat <<EOF > /etc/docker/daemon.json
{
	"dns": ["8.8.8.8", "8.8.4.4"],
	"hosts": ["tcp://0.0.0.0:2376", "unix:///var/run/docker.sock"]
}
EOF
```

**Note on Mint**

On Mint edit **/lib/systemd/system/docker.service** and remove -H fd://
 from the line stasring with ExecStart=/usr/bin/dockerd


