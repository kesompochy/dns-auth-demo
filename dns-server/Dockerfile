FROM ubuntu/bind9:latest

COPY named.conf /etc/bind/named.conf
COPY db.example.com /etc/bind/zones/db.example.com

CMD ["named", "-g", "-c", "/etc/bind/named.conf"]