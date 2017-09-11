# Jenkins

## Running jenkins in docker

```bash
ROOT_DIR=$(pwd)/jenkins_home/
mkdir -p ${ROOT_DIR}
chmod 0777 ${ROOT_DIR}
docker run -d -p 10080:8080 --name=jenkins -v ${ROOT_DIR}:/var/jenkins_home/ -t jenkins/jenkins:lts
```
