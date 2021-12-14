#!/usr/bin/env bash

# On créé la paire de certificat
mkdir cert
openssl genrsa -out cert/user1.key 2048
openssl req -new -key cert/user1.key -out cert/user1.csr -subj "/CN=user1/O=group1"
openssl x509 -req -in cert/user1.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out cert/user1.crt -days 500

# On ajoute un nouvel utilisateur en fournissant les certs
kubectl config set-credentials user1 --client-certificate=cert/user1.crt --client-key=cert/user1.key
kubectl config set-context user1-context --cluster=minikube --user=user1
kubectl config view
