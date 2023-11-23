#desactive le firewall(recommandé par la doc)
systemctl disable firewalld --now

#telecharge k3s + tous ses utils et l'installe en tant que serveur
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" K3S_KUBECONFIG_MODE="600" sh -s - --node-ip 192.168.56.110 

#donne le droit d'acces au fichier de config kubectl
chown vagrant:vagrant /etc/rancher/k3s/k3s.yaml