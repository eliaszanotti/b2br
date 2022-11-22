# Documentation

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

## Sources 

[Pam cracklib tuto](https://ostechnix.com/force-users-use-strong-passwords-debian-ubuntu/)
