## Description

### 6to4
Snippets for 6to4 tunneling setup on IPv4 networks with public IP terminated on MikroTik.

### Automatic upgrade
Automatic upgrade of RouterOS with mail notification. Be really careful with this one as it already happened several times that MikroTik guys made the packages incompatible between versions.

### Backup
Automatic backup over mail. Sends both RSC script and a encrypted backup file.

### Firewall
Filtering incoming and outgoing IPv4 traffic. Lots of ports in outgoing rules allow to collect nice traffic statistics.

### Malware
Additional filtering for malware IPs obtained from publicly available blacklists.

### SSTP Let's Encrypt
Core scripts for SSTP server using Let's Encrypt certificates. Much more configuration needed as described on https://www.dasm.cz/clanek/mikrotik-sstp-server-s-let-s-encrypt-certifikatem
