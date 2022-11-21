#!/bin/bash

arch_info=$(uname -a)
nb_cpu=$(nproc)
nb_vcpu=$(cat /proc/cpuinfo | grep processor | wc -l)
actual_ram=$(free -mt | grep Mem | awk '{print $3;}')
max_ram=$(free -mt | grep Mem | awk '{print $2;}')
percent_ram=$(echo "scale=4; $actual_ram / $max_ram * 100" | bc -l | rev | cut -c3- | rev)
disk_use=$(df -h | awk '($6 == "/") {print $3}')
disk_total=$(df -h | awk '($6 == "/") {print $2}')
disk_percent=$(df -h | awk '($6 == "/") {print $5}')
cpu_load=$(mpstat | grep all | awk '{print $4}')
last_boot=$(who -b | awk '{print $3" "$4}')
lvm_use=$(if  grep -Pq '/dev/(mapper/|disk/by-id/dm)' /etc/fstab; then echo "yes"; else echo "no"; fi)
tcp_connections=$(netstat -s | grep established | awk '{print $1" "$2" "$3}')
user_log=$(who | wc -l)
ip_addr=$(ip a | grep "scope global" | awk '{print $2}')
mac_addr=$(ip link show | grep "link/ether" | awk '{print $2}')
sudo_count=$(sudo grep sudo /var/log/auth.log | grep COMMAND | wc -l)

ft_title () {
	echo "\t#$1\t: $2"
}

echo "MONITORING SCRIPT :\n"

ft_title "Architecture" "$arch_info"
ft_title "CPU physical" "$nb_cpu"
ft_title "CPU virtual" "$nb_vcpu"
ft_title "Memory Usage" "$actual_ram MB / $max_ram MB ($percent_ram %)"
ft_title "Disk Usage" "$disk_use / $disk_total ($disk_percent)"
ft_title "CPU load" "$cpu_load %"
ft_title "Last boot" "$last_boot"
ft_title "LVM use" "$lvm_use"
ft_title "Connexions TCP" "$tcp_connections"
ft_title "User Log" "$user_log"
ft_title "Network" "IP : $ip_addr ($mac_addr)"
ft_title "Sudo commands" "$sudo_count cmd"
