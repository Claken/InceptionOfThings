curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --debug --node-ip 192.168.56.110 --token mysecret" sh -
kubectl config view
sleep 10

kubectl apply -f /confs/app1.yaml
kubectl apply -f /confs/app2.yaml
kubectl apply -f /confs/app3.yaml
