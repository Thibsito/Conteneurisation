#!/usr/bin/env bash

# On change d'utilisateur
kubectl config use-context user1-context
kubectl config current-context
# On tente de créer un namespace en tant que user
kubectl create namespace ns-test
# On vérifie après avoir testé si on a le droit de le faire
kubectl auth can-i create namespace

# On repasse admin et on crée un rôle pour user
kubectl config use-context minikube
kubectl apply -f rbac/rbac.yaml
kubectl auth can-i create namespace --as user1

# On repasse en tant que user et on réessaie de créer le namespace
kubectl config use-context user1-context
kubectl config current-context
kubectl auth can-i create namespace
kubectl create namespace ns-test
kubectl get namespace ns-test