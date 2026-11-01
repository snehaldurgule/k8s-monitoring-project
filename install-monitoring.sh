# Monitoring stack install steps
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install monitoring prometheus-community/kube-prometheus-stack -n monitoring
# Grafana password
kubectl get secret -n monitoring monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 --decode
# Expose Grafana
kubectl port-forward -n monitoring svc/monitoring-grafana 31000:80 --address 0.0.0.0 &
# Keep alive with tmux
