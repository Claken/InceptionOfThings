curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent --debug --server https://192.168.56.110:6443 --token mysecret --node-ip=192.168.56.111 " sh -
