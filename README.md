# Documentation

```
/root/monitoring.sh
/etc/login.defs
/etc/ssh/sshd_config
/etc/hostname
/etc/security/pwquality.conf
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
