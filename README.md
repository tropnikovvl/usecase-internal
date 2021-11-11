# usecase-internal

0) cd /kubectl
1) kubectl apply -f .

2) cd /helm/stolon
3) helm install -n dev -f values.yaml stolon .

kubectl --namespace ingress-nginx get services -o wide -w nginx-ingress-nginx-controller
