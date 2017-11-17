# Vagrant notes

```bash
vagrant box add hashicorp/precise64
```


## Creating custom debian base image

Create new VM in virtualbox.
Create 50GB dynamic disk.
Install debian9 from netinstall image - minimal installation:
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

Edit */etc/ssh/sshd_config* file and ensure following lines:

```
PasswordAuthentication yes
PermitEmptyPasswords no
```

For VMs that will be managed by ansible run:

```
apt-get install python python-apt
```


Outside vm, on the host run

```bash
ssh-keygen -t rsa -b 4096 -C "vagrant@debian9" -f vagrant_rsa -N ''
ssh-copy-id -i vagrant_rsa vagrant@192.168.1.5
```



Create the image

```bash
vagrant package --base debian9
mv package.box debian9.box
```

Add box to vagrant

```bash
vagrant box add --cert vagrant_rsa --provider virtualbox --name debian9 debian9.box
```
