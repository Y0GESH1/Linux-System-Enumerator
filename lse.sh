#!/bin/bash 

cu=$(whoami) > output.txt
echo "Current user is $cu" 

echo >> output.txt
echo "----------------------------------" >> output.txt
echo >> output.txt

host=$(hostname --all-fqdns)
echo "All fully qualifed domain names for the system are $host"

echo 
echo "----------------------------------"
echo

hostip=$(hostname --all-ip-addresses)
echo "All IP addresses for the system are $hostip"

echo 
echo "----------------------------------"
echo

host_nis=$(hostname -y)
echo "the host nis if exists -> $host_nis"

echo 
echo "----------------------------------"
echo

uid=$(id -a)
echo "the current user_id and group information -> $uid"

echo 
echo "----------------------------------"
echo

mdi=$(lsblk -afpz)
echo "currently present block/storage device info :"
echo "$mdi"

echo 
echo "----------------------------------"
echo

osi=$(cat /etc/os-release)
echo "OS information :"
echo "$osi"

echo 
echo "----------------------------------"
echo

cpu=$(lscpu)
echo "CPU information :"
echo "$cpu"
