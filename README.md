# usecase-internal

**IMPORTANT**: This product may only be used for test purposes. Not for the production environment
It is highly desirable to use on a pure Kubernetes cluster (including without ingress-nginx)

## About This Repository

The repository contains helm charts that deploy the minimum necessary configuration for the software to work.
- Stolon - https://github.com/sorintlab/stolon
- Ingress-nginx - https://github.com/kubernetes/ingress-nginx
- VictoriaMetrics - https://github.com/VictoriaMetrics/VictoriaMetrics

## Pre-requisites

Your computer must have the following settings installed and configured:
- Helm
- Kubectl

## How to install automatically
- bash install.sh

## How to install Manually

**bootstrap:**
- kubectl apply -f kubectl/*

**deploy Stolon:**
- helm upgrade -i -n dev -f helm/stolon/values.yaml stolon helm/stolon

**deploy Ingress-nginx:**
- helm upgrade -i -n ingress-nginx -f helm/ingress-nginx/values.yaml nginx helm/ingress-nginx

**deploy VictoriaMetrics:**
- because of nginx you need to wait 15-30 seconds before deploying
- helm upgrade -i -n monitoring -f helm/victoria-metrics-k8s-stack/values.yaml victoria helm/victoria-metrics-k8s-stack

This way you deploy from scratch all the necessary infrastructure to run the application

<!-- kubectl --namespace ingress-nginx get services -o wide -w nginx-ingress-nginx-controller -->
