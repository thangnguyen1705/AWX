sudo yum remove wazuh-agent -y 
sudo WAZUH_MANAGER='elk.wazuh.local' yum install https://packages.wazuh.com/3.x/yum/wazuh-agent-3.12.2-1.x86_64.rpm -y