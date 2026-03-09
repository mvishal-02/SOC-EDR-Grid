Test rules

sudo /var/ossec/bin/wazuh-logtest

Check manager logs

sudo tail -f /var/ossec/logs/ossec.log

Restart wazuh

sudo systemctl restart wazuh-manager