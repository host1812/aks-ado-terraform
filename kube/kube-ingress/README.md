# README

Install ingress using `helm`:

```bash
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
    --version 4.0.1 -f kube/kube-ingress/ingress-controller-values.yaml --namespace ingress-nginx --create-namespace \
    --set controller.service.loadBalancerIP=$(terraform -chdir=./terraform output aks_ingress_public_ip_address)
```
