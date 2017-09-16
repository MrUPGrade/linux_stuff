# Jenkins

## Installing jenkins on ubuntu/debian

From https://pkg.jenkins.io/debian-stable/

```bash
# as root
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
sudo apt-get update
sudo apt-get -y install jenkins
```


## Running jenkins in docker

```bash
ROOT_DIR=$(pwd)/jenkins_home/
mkdir -p ${ROOT_DIR}
chmod 0777 ${ROOT_DIR}
docker run -d -p 10080:8080 --name=jenkins -v ${ROOT_DIR}:/var/jenkins_home/ -t jenkins/jenkins:lts
```
