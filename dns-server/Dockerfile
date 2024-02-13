FROM ubuntu/bind9:latest

COPY named.conf /etc/bind

RUN mkdir /etc/bind/zones
COPY example.com /etc/bind/zones

CMD ["named", "-g", "-c", "/etc/bind/named.conf"]
