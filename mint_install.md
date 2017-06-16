# Mint installation notes 

## Virtual box

Install virtualbox

```bash
echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" > /etc/apt/sources.list.d/virtualbox.list

wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
apt-key add oracle_vbox_2016.asc
rm oracle_vbox_216.asc

apt-get update
apt-get install virtualbox-5.1

```

Add user to the group

```bash
SELECTED_USER=upgrade
usermod -a -G vboxusers $SELECTED_USER 
```

## Vargrant 

Install vagrant

```bash
wget https://releases.hashicorp.com/vagrant/1.9.5/vagrant_1.9.5_x86_64.deb
dpkg -i vagrant_1.9.5_x86_64.deb
rm vagrant_1.9.5_x86_64.deb
```

