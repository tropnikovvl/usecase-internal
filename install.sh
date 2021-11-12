#!/bin/bash

kubectl apply -f kubectl/*

helm upgrade -i -n dev -f helm/stolon/values.yaml stolon helm/stolon

helm upgrade -i -n ingress-nginx -f helm/ingress-nginx/values.yaml nginx helm/ingress-nginx

sleep 20 # wait nginx

helm upgrade -i -n monitoring -f helm/victoria-metrics-k8s-stack/values.yaml victoria helm/victoria-metrics-k8s-stack
