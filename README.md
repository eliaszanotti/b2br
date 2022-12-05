# Documentation

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
sudo groupadd mynewgroup
usermod -a -G examplegroup exampleusername
```

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
