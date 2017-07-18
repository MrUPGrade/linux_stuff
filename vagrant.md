# Vagrant notes

```bash
vagrant box add hashicorp/precise64
```


## Creating custom debian base image

Create new VM in virtualbox.
Create 12GB dynamic disk.
Install debian8 from netinstall image - minimal installation:
 - empty root password
 - user - vagrant:vagrant
 
Inside host after installation (assuming that you created vagrant user with sudoers):

```bash
sudo su - 
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

apt-get update
apt-get upgrade
apt-get install ssh
```

Outside vm, on the host run:

```bash
sh-keygen -t rsa -b 4096 -C "vagrant@debian8"
ssh-copy-id -i vagrant_rsa vagrant@192.168.1.5
```

Create the image

```bash
vagrant package --base debian8
mv package.box debian8.box
```

Add box to vagrant

```bash
vagrant box add --cert vagrant_rsa --provider virtualbox --name debian8 debian8.box
```
