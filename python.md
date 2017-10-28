# Python

## Install from sources

### Ubuntu

Install dependencies

```bash
apt-get install -y build-essential checkinstall
apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev \
libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
```
Download desired Python version (here: 3.4.7):
```bash
cd ~/src
curl -O https://www.python.org/ftp/python/3.4.7/Python-3.4.7.tgz
tar -zxvf Python-3.4.7.tgz 
cd Python-3.4.7
```
Configure sources

```bash
./configure --prefix=/home/upgrade/opt/python3.4
```

Build

```bash
make -j 5
```

Install
```bash
make install
```

Create symlink
```bash
ln -s ~/opt/python3.4/bin/python3.4 ~/bin/python3.4
```

Paste the line below to the `.bashrc`:
```bash
export PATH=~/bin:${PATH}
```
and sorce this file 
```bash
. ~/.bashrc 
```
