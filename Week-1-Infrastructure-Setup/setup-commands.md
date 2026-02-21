# Week 1 – SOC Infrastructure Setup Commands

## ============================
## Ubuntu SOC Server (Wazuh)
## ============================

# Update system
sudo apt update && sudo apt upgrade -y

# Check IP address
ip a

# Install Wazuh (all-in-one stack)
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh
sudo bash wazuh-install.sh -a

# Check Wazuh services
sudo systemctl status wazuh-manager
sudo systemctl status wazuh-indexer
sudo systemctl status wazuh-dashboard

# Manage agents
sudo /var/ossec/bin/manage_agents

# List agents
sudo /var/ossec/bin/manage_agents -l

# Extract agent key
sudo /var/ossec/bin/manage_agents -e <AGENT_ID>


## ============================
## Windows Host – Sysmon
## ============================

# Run as Administrator

sysmon.exe -accepteula -i

# Check Sysmon service
sc query sysmon


## ============================
## Windows Host – Wazuh Agent
## ============================

# Set Manager IP in GUI
# Paste Authentication Key
# Save and Start Agent

# Verify agent running
sc query wazuh


## ============================
## Connectivity Test
## ============================

# From Ubuntu
ping google.com

# From Windows
ping <UBUNTU_IP>