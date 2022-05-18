rsync -avzhLe "ssh -p ssh_port" /etc/letsencrypt/* root@nginx_server_2:/etc/letsencrypt/
rsync -avzhLe "ssh -p ssh_port" /etc/letsencrypt/* root@nginx_server_3:/etc/letsencrypt/
rsync -avzhLe "ssh -p ssh_port" /etc/nginx/conf.d/* root@nginx_server_2:/etc/nginx/conf.d/
rsync -avzhLe "ssh -p ssh_port" /etc/nginx/conf.d/* root@nginx_server_3:/etc/nginx/conf.d/
rsync -avzhLe "ssh -p ssh_port" /etc/nginx/htpasswd root@nginx_server_2:/etc/nginx/
rsync -avzhLe "ssh -p ssh_port" /etc/nginx/htpasswd root@nginx_server_3:/etc/nginx/
