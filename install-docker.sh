ubuntu@jenkins:~$ vim install-docker.sh
#!/bin/bash
sudo apt install -y curl
sudo apt-get install -y apt-transport-https ca-certificates
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
sudo apt install -y docker-ce
sudo usermod -aG docker ubuntu
sudo systemctl daemon-reload
sudo systemctl enable docker
sudo systemctl restart docker
sudo restart

ubuntu@jenkins:~$ chmod u+x docker-install.sh
ubuntu@jenkins:~$ ./docker-install.sh
