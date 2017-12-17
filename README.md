## Kali-docker-install-script

A simple bash script for install Docker on Kali Linux (x64).

Please run as normal user.

### This script will

* Download and install docker
* Add user to docker group
* Pull & run hello-world

Fork & change from https://gist.github.com/nikallass/e5124756d0e2bdcf8981827f3ed40bcc

### Usage

#### via curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Katzeilla/kali-docker-install-script/master/install.sh)"
```

#### via wget

```shell
sh -c "$(wget https://raw.githubusercontent.com/Katzeilla/kali-docker-install-script/master/install.sh -O -)"
```
