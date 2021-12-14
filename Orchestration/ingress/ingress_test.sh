#!/usr/bin/env bash

url="ingress.example.local"
ns="default"
ingress="ingress-lb"
svc="nginx-service-load-balancer"
url_path="/source/essai"

kubectl get po,svc,ingress

ip=$(kubectl get ingress "$ingress" -n "$ns" -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
port=$(kubectl get svc "$svc" -n "$ns" -o jsonpath='{.spec.ports[0].port}')

echo "$url$url_path"
curl --resolve "$url:$port:$ip" -D- "$url$url_path"