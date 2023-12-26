curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig-mode=644 --debug --node-ip 192.168.56.110 --token mysecret" sh -
kubectl config view
sleep 10

# install ingress nginx controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.2/deploy/static/provider/cloud/deploy.yaml

kubectl apply -f /confs/app1.yaml
kubectl apply -f /confs/app2.yaml
kubectl apply -f /confs/app3.yaml

# wait for ingress controller to be ready
sleep 10

echo -e "\e[90mWaiting for ingress controller to be ready...\e[0m"

kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=320s

echo -e "\e[32mIngress controller ready!\e[0m"

kubectl apply -f /confs/ingress.yaml
