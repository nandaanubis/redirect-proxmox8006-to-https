echo " Nanda Anubis Present"
echo " Redirect Proxmox WebUI 8006 to 443"
echo " Add the ip tables rule " 
/sbin/iptables -F
/sbin/iptables -t nat -F
/sbin/iptables -t nat -A PREROUTING -p tcp --dport 443 -j REDIRECT --to-port 8006
echo " Install iptables-persistent "
apt install iptables-persistent -y
