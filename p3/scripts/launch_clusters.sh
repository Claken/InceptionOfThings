k3d cluster create argocd --config ./confs/k3d-config.yaml

#argocd
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl -n argocd patch secret argocd-secret -p '{"stringData":  {
    "admin.password": "$2a$12$mhgktkeSKxbPW9bZ2ARupOyGBc.u5xTyz9VS7o6zEDHC8vcpJpEhG",
    "admin.passwordMtime": "'$(date +%FT%T%Z)'"
  }}'


#dev app
kubectl create namespace dev