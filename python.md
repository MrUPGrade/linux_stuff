# Python

## Install from sources

### Ubuntu

Install dependencies

```bash
apt-get install -y build-essential checkinstall
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev \
libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
```

Configure sources

```bash
./configure --prefix=/home/$USER/opt/python3.4
```

Build

```bash
make -j 5
```
