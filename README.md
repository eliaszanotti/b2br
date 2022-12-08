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

## Install
```
libpam-cracklib
sudo

bc
net-tools
sysstat
```

## Commandes

Sudo command
```
sudo groups
sudo groupadd mynewgroup
sudo usermod -a -G examplegroup exampleusername
```

Edit crontab
```
crontab -e
```

Change hostname
```
hostnamectl
hostnamectl set-hostname
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

APT (Advanced Packaging Tools) est un gestionnaire de paquet avancé qui permet d'installer des paquets et de les rechercher. 
Aptitude est un gestionnaire de paquets basé sur APT.

Apparmor est plus simple que SELinux. 
Apparmor sert a confiner les programmes, c'est une sécurité pour limiter l'acces d'un programme a des ressources du noyau.
On peut associer a des programmes des profils de sécurité pour limiter l'acces a l'OS.

UFW est un parefeu qui permet de restreindre l'acces a des ports.

LVM permet de resize des partitions plus facilement et d'en creer facilement de nouvelles.

LVM = Logical Volume Manager
SSH = Secure Shell
