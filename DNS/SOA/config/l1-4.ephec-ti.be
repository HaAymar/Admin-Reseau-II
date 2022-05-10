
$ORIGIN l1-4.ephec-ti.be.
$TTL    604800
@   IN  SOA ns.l1-4.ephec-ti.be. admin.l1-4.ephec-ti.be. (
                 19     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL

;
;NS
@       IN      NS      ns.ephec-ti.be.
@       IN      A       176.96.231.164
@       IN      MX      10 mail
ns      IN      A       176.96.231.164
;
;Web
www     IN      A       176.98.231.163
b2b     IN      A       176.98.231.163
;
;Mail
mail    IN      A       176.98.231.164
;Voip
_sip._tcp       SRV     0       0       5060    sip
_sip._udp       SRV     0       0       5060    sip
sip     IN      A       176.98.231.164
