#!/bin/bash
eksctl create cluster -f cluster.yaml
#eksctl delete cluster -f cluster.yaml
kubectl apply -f clusterRole.yaml
kubectl create namespace monitoring


#Deploy sample mongo db 
kubectl apply -f mongo-secret.yaml
kubectl apply -f mongo.yaml
kubectl apply -f mongo-configmap.yaml 
kubectl apply -f mongo-express.yaml


#deploy prometheus service and expose services for monitoring
kubectl apply -f config-map.yaml
kubectl apply -f prometheus-deployment.yaml
kubectl apply -f prometheus-service.yaml


#deploy grafana, fetch prom data, 
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml


#configure ingress to correctly expose ports etc
kubectl apply -f ingressclass.yaml
kubectl apply -f ingress.yaml