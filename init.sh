sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
cd /home/box/web/
sudo gunicorn -b 0.0.0.0:8080 hello:application