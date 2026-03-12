# Week 3 – Active Response Verification

## Objective

The objective of this phase was to validate the Active Response capability of the Wazuh EDR system.  
A brute-force SSH attack was simulated, and the system was expected to automatically block the attacker's IP address.

---

# Test Scenario

Attack Type:
SSH Brute Force Attack

Attack Tool:
Hydra

Attacker Machine:
Kali Linux

Target System:
Linux SOC Server

---

# Attack Command Used

hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://0.0.0.0

---

# Detection Phase

When the brute-force attack started:

1. SSH authentication failures were generated.
2. Wazuh agent collected the authentication logs.
3. Wazuh manager analyzed the logs.
4. Rule **5710 (SSH brute force detection)** was triggered.

Example alert:
Multiple SSH authentication failures detected from same IP

---

# Active Response Trigger

After the detection rule was triggered:

• Wazuh executed the **firewall-drop active response script**  
• The script inserted a firewall rule to block the attacker IP

Firewall command executed:
iptables -I INPUT -s <attacker-ip> -j DROP

---

# Verification Command

To confirm the block: iptables -L
Expected output: DROP all -- <attacker-ip> anywhere


This confirms that the attacker's IP address has been successfully blocked.

---

# Evidence

The following evidence was collected:

1. Wazuh dashboard alert screenshot
2. Firewall rule showing blocked IP
3. Active response logs

Screenshots stored in: Week-3-Active-Response/screenshots

---

# Result

The system successfully detected the SSH brute-force attack and automatically blocked the attacker's IP address using the Wazuh Active Response mechanism.

This demonstrates the effectiveness of the implemented **automated intrusion prevention system (IPS)**.

---

# Conclusion

Week-3 implementation successfully transformed the monitoring system into an **active defense mechanism**, capable of detecting and stopping attacks in real time.

---