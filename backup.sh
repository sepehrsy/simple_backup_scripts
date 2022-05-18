echo "Nginx Backup:"
rsync -avzhLe "ssh -p ssh_port" root@nginx_server_ip:/etc/nginx /Backup/Nginx/
rsync -avzhLe "ssh -p ssh_port" root@nginx_Server_ip:/root/docker-compose.yml /Backup/Nginx/
echo "Nginx Backup Done"
date
echo "----"

echo "Grafana Backup:"
rsync -avzhLe "ssh -p ssh_port" root@gragana_server_ip:/grafana/ /Backup/Grafana/
rsync -avzhLe "ssh -p ssh_port" root@gragana_server_ip:/root/docker-compose.yml /Backup/Grafana/
echo "Grafana Backup Done"
date
echo "----"

echo "Prometheus Backup:"
rsync --exclude '/prometheus/data/mongodb' --exclude '/prometheus/data/prometheus/' -avzhLe "ssh -p ssh_port" root@prometheus_server_ip:/prometheus/ /Backup/Prometheus/
rsync -avzhLe "ssh -p ssh_port" root@prometheus_server_ip:/root/docker-compose.yaml /Backup/Prometheus/
echo "Prometheus Backup Done"
date
echo "----"

