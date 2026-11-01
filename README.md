# K8s Voting App with Monitoring on EC2

## What I Built
- Deployed voting app on Kind inside EC2
- Added Prometheus + Grafana monitoring
- Exposed Grafana on 31000 via NodePort mapping

## My Work
- kind-config.yaml with extraPortMappings (mine)
- Monitoring install via Helm (mine)
- Troubleshooting production issues (mine)

## Base App (Sample Workload)
- Voting app from https://github.com/LondheShubham153/k8s-kind-voting-app

## How to Run
kind create cluster --config kind-config.yaml
kubectl apply -f ~/k8s-kind-voting-app/k8s-specifications/
bash install-monitoring.sh
