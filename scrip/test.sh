#sed -i '/thanhpd/d' /etc/yubipasswd
#echo "thanhpd:ccccccigevlu" >> /etc/yubipasswd
##install zabbix-agent disk
#sudo mkdir -p /etc/zabbix/zabbix_agentd.d/
#sudo wget https://raw.githubusercontent.com/grundic/zabbix-disk-performance/master/userparameter_diskstats.conf -O /etc/zabbix/zabbix_agentd.d/userparameter_diskstats.conf
#sudo wget https://raw.githubusercontent.com/grundic/zabbix-disk-performance/master/lld-disks.py -O /usr/local/bin/lld-disks.py
#sudo chmod +x /usr/local/bin/lld-disks.py
#sudo service zabbix-agent restart
##ad route
#ip route delete 10.0.8.103 via 10.0.0.175
#ip route add 10.0.8.0/24 via 10.0.36.2
#echo 'ip route add 10.0.8.0/24 via 10.0.36.2' >> /etc/sysconfig/network-scripts/ifcfg-ens160
#add dns
#sed -i 's/10.0.8.8      elk.wazuh.local//g' /etc/hosts
#echo '10.0.8.100      elk.wazuh.local' >> /etc/hosts
#echo 'DNS3=10.0.8.8' >> /etc/sysconfig/network-scripts/ifcfg-ens160
##install agent wazuh
#sudo yum remove wazuh-agent -y
#sudo WAZUH_MANAGER_IP='elk.wazuh.local' yum install https://packages.wazuh.com/3.x/yum/wazuh-agent-3.10.1-1.x86_64.rpm -y
#sudo systemctl enable wazuh-agent.service
#sudo systemctl start wazuh-agent.service
#sudo service wazuh-agent start
#sudo chkconfig wazuh-agent on
#sed  -i '1i nameserver 10.0.8.8'  /etc/resolv.conf
#sed  -i '2i nameserver 10.0.8.9'  /etc/resolv.conf
#sed  -i '1i giaplv:vvjdfjdehjfb'  /etc/yubipasswd
#sed  -i '2i thaopt:vvjdfjdehjef'  /etc/yubipasswd
#sed  -i '3i phunh:vvjdfjdehjff'  /etc/yubipasswd
#sed  -i '4i thangnv:vvjdfjdehjfn'  /etc/yubipasswd
#sed  -i '5i thanhpd:vvjdfjdehjbg'  /etc/yubipasswd
#sed  -i '6i hoantx:vvjdfjdehjbl'  /etc/yubipasswd
#sed -i '/auth    required        pam_yubico\.so id=16 debug authfile=\/etc\/yubipasswd/d' /etc/pam.d/sshd
#sed  -i '1i auth    required        pam_yubico.so id=1  authfile=/etc/yubipasswd url=http://auth.yubikey.local/wsapi/2.0/verify?id=%d&otp=%s pam_sepermit.so' /etc/pam.d/sshd
#sed  -i '8i duclm:vvjdfjdehjdn'  /etc/yubipasswd 
#sed  -i '8i taind:vvjdfjdehjgu'  /etc/yubipasswd
#sed  -i '9i lamv:vvjdfjdehjft'  /etc/yubipasswd
##############Install VM-tool#########
#yum install open-vm-tools -y
#systemctl enable vmtoolsd
#systemctl start vmtoolsd
#chkconfig vmtoolsd on
#service vmtoolsd start
##delete user
#!/bin/ksh
#
#for user in $(< /etc/ansible/giaplv/listuser_old)
#do
#  userdel -r $user
#done
#

#!/bin/bash
#cat > simple.txt << "EOF"
#hungld
#phuonglh
#tunt
#minhdt
#bachnt
#tienbm
#hungnv
#quyetnd
#sontn
#dont
#linhnv2
#sysadmin
#games
#ducnn
#EOF
#user=(`cat simple.txt`)
#COUNTER=0
#while [  $COUNTER -lt 15 ]; do
#	userdel ${user[$COUNTER]}
#	let COUNTER=COUNTER+1
#	echo "${user[$COUNTER]}"
#done

# update ntp 
#sed -i 's/server/\#server/g'  /etc/ntp.conf
#echo 'server 10.0.16.1' >> /etc/ntp.conf
#service ntpd restart
#systemctl restart ntpd
#ntpdate -u 10.0.16.1
sudo yum remove wazuh-agent -y && sudo WAZUH_MANAGER='elk.wazuh.local' yum install https://packages.wazuh.com/3.x/yum/wazuh-agent-3.12.2-1.x86_64.rpm -y