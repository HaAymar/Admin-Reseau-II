$ORIGIN intranet.l1-4.ephec-ti.be.
$TTL 86400      ; 1 day
@                       IN SOA  ns.intranet.l1-4.ephec-ti.be. aymar.l1-4.ephec-ti.be. (
                                1          ; serial
                                21600      ; refresh (6 hours)
                                3600       ; retry (1 hour)
                                604800     ; expire (1 week)
                                86400      ; minimum (1 day)
                                )
;
@               IN      NS      ns.intranet.l1-4.ephec-ti.be.
@		IN	A	192.168.0.3
ns              IN      A       192.168.0.3
samba           IN      A       192.168.0.4
resolv		IN	A	192.168.0.2
