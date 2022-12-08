# Documentation

## Files

```
/root/monitoring.sh
/etc/login.defs
/etc/ssh/sshd_config
/etc/hostname
/etc/pam.d/common-password
/etc/sudoers
```

## Commandes

Edit crontab
```
crontab -e
```

Install UFW
```
sudo ufw allow 4242
sudo ufw enable
sudo ufw status verbose
```

Get passwd info
```
sudo chage -l $USER 
```

Change all the chage
```
sudo chage -m 2 -M 30 root
```

## Sources 

[Pam cracklib tuto](https://ostechnix.com/force-users-use-strong-passwords-debian-ubuntu/)

## Questions

Debian est plus utilisé et il y'a donc plus de doc, plus pour une utilisation quotidienne que Cent OS.
Cent os est plus pour les entreprises. Les deux sont basés sur Linux.
Les MAJ sont plus simples sur Debian et il y'a plus de paquets disponibles. 





