# Issues Faced & Fixed

1. Grafana not opening on public IP
   Fix: Added --address 0.0.0.0 and opened port 31000 in Security Group

2. Port-forward stopped after SSH closed
   Fix: Used tmux (tmux new -s grafana)

3. Wrong Grafana password
   Fix: kubectl get secret -n monitoring monitoring-grafana -o jsonpath="{.data.admin-password}" | base64 -d
