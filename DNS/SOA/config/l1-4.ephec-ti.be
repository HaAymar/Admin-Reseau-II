
$ORIGIN l1-4.ephec-ti.be.
$TTL    604800
@   IN  SOA ns.l1-4.ephec-ti.be. admin.l1-4.ephec-ti.be. (
         2022060701     ; Serial
              43200     ; Refresh
               7200     ; Retry
            2419200     ; Expire
              86400 )   ; Negative Cache TTL



;NS
@       IN      NS      ns.ephec-ti.be.
@       IN      A       176.96.231.164
@       IN      MX      10 mail
ns      IN      A       176.96.231.164


;Web
www     IN      A       176.96.231.163
b2b     IN      A       176.96.231.163


;Mail
mail    IN      A       176.96.231.164
smtp    IN      A       176.96.231.164

164.231.96.176.in-addr.arpa.   IN   PTR   mail.l1-4.ephec-ti.be
164.231.96.176.in-addr.arpa.   IN   PTR   smtp.l1-4.ephec-ti.be

;Voip
_sip._tcp       SRV     0       0       5060    sip
_sip._udp       SRV     0       0       5060    sip
sip     IN      A       176.96.231.164
