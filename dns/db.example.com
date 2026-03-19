$TTL 604800
@       IN      SOA     dns-vb-1.example.com. example.com. (
7       ; Serial
604800  ; Refresh
86400   ; Retry
2419200 ; Expire
604800  ) ; Negative Cache TTL

; name servers - NS records
        IN      NS      dns-vb-1.example.com.

; name servers - A records
dns-vb-1.example.com.   IN      A       192.168.1.7

; 192.168.1.7  - A records
app-vb-1.example.com.   IN      A       192.168.1.6

gitlab-vb-1.example.com.        IN      A       192.168.1.8

prometheus-vb-1.example.com.    IN      A       192.168.1.9

grafana-vb-1.example.com.       IN      A       192.168.1.10

gitlab.example.com.     IN      CNAME   gitlab-vb-1

registrator.example.com.        IN      CNAME   app-vb-1.example.com.
