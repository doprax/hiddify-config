systemctl kill hiddify-sniproxy
systemctl stop hiddify-sniproxy
systemctl disable hiddify-sniproxy

systemctl kill haproxy
systemctl stop haproxy
systemctl disable haproxy
pkill -9 haproxy
pkill -9 sniproxy

apt install haproxy -y

ln -sf $(pwd)/hiddify-haproxy.service /etc/systemd/system/hiddify-haproxy.service
systemctl enable hiddify-haproxy.service