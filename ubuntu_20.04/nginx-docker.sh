echo "Do you want to install Nginx? (y/n)"
read install_nginx

if [ "$install_nginx" = "y" ]; then
    # Install Nginx
    sudo apt update
    sudo apt install nginx
    sudo ufw app list
    sudo ufw allow 'Nginx HTTP'
    sudo ufw allow 'Nginx HTTPS'
    sudo ufw allow 'Nginx Full'
    sudo ufw allow 'OpenSSH'
    sudo ufw enable
    echo "Nginx installed successfully."
fi

echo "Do you want to install Docker? (y/n)"
read install_docker

if [ "$install_docker" = "y" ]; then
    # Install Docker
    curl -fsSL https://get.docker.com -o install-docker.sh
    sudo sh install-docker.sh
    sudo rm install_docker.sh
    echo "Docker installed successfully."
fi

echo "Do you want to install Docker Compose? (y/n)"
read install_docker_compose

if [ "$install_docker_compose" = "y" ]; then
    # Install Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "Docker compose installed successfully."
fi

echo "Do you want to setup SSH Key? (y/n)"
read setup_ssh_keys

if [ "$setup_ssh_keys" = "y" ]; then
    # Setup SSH Keys
    ssh-keygen
    cat ~/.ssh/id_rsa.pub
fi