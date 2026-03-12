#!/bin/bash

# Wazuh Active Response Script
# Purpose: Automatically block attacker IP after brute force detection

ACTION=$1
USER=$2
IP=$3

LOG_FILE="/var/ossec/logs/active-responses.log"

echo "[$(date)] Active Response Triggered for IP: $IP" >> $LOG_FILE

if [ "$ACTION" = "add" ]; then
    echo "Blocking IP: $IP"
    
    # Add firewall rule
    iptables -I INPUT -s $IP -j DROP
    
    echo "[$(date)] IP $IP blocked successfully" >> $LOG_FILE
fi

if [ "$ACTION" = "delete" ]; then
    echo "Removing block for IP: $IP"
    
    # Remove firewall rule
    iptables -D INPUT -s $IP -j DROP
    
    echo "[$(date)] IP $IP unblocked successfully" >> $LOG_FILE
fi

exit 0