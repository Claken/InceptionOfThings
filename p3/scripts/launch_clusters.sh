#!/bin/bash

k3d cluster create argocd --config ./confs/k3d-config.yaml

#argocd
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
#change credentials to admin admin
kubectl -n argocd patch secret argocd-secret -p '{"stringData":  {
    "admin.password": "$2a$12$mhgktkeSKxbPW9bZ2ARupOyGBc.u5xTyz9VS7o6zEDHC8vcpJpEhG",
    "admin.passwordMtime": "'$(date +%FT%T%Z)'"
  }}'

#dev app
kubectl create namespace dev

# https://github.com/Lap0u/cbeaurai-IoT_app
kubectl apply -f ./confs/application.yaml

#waits for argocd pods to be ready
while [ $(kubectl get pod -n argocd | grep "0/1" | wc -l) -ne 0 ]; do
    kubectl get pod -n argocd | grep "0/1"
    echo "waiting for iot-app pod to be ready" 
    sleep 5
done

kubectl port-forward -n argocd svc/argocd-server 8080:443