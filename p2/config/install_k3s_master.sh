curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --debug --node-ip 192.168.56.110 --token mysecret" sh -

kubectl apply -f /config/app1.yaml