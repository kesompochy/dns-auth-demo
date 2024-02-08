$TTL    604800
@       IN      SOA     ns1.example.com. admin.example.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns1.example.com.
ns1     IN      A       192.0.2.1
@       IN      A       192.0.2.2
www     IN      A       192.0.2.2