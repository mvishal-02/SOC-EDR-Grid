# Week 3 – Active Response Implementation

## Overview

Week 3 focuses on implementing **Active Response** capabilities within the Wazuh-based EDR infrastructure.  
The goal is to automatically block malicious sources when suspicious activity such as brute-force attacks is detected.

This transforms the system from a **passive monitoring system** into an **active defense mechanism** capable of preventing attacks in real time.

---

# Objective

The objective of this phase is to detect **SSH brute-force attacks** and automatically block the attacker’s IP address using firewall rules through the Wazuh Active Response module.

---

# Architecture Flow

Attacker (Kali Linux)  
↓  
SSH Brute Force Attack (Hydra)  
↓  
Target Linux Server  
↓  
Wazuh Agent Collects Logs  
↓  
Wazuh Manager Analyzes Events  
↓  
Detection Rule Triggered  
↓  
Active Response Script Executed  
↓  
Firewall Blocks Attacker IP  

---

# Technologies Used

- Wazuh Manager  
- Wazuh Agent  
- Linux Firewall (iptables)  
- Hydra (Brute-force testing tool)  
- Kali Linux  

---

# Active Response Mechanism

Wazuh provides an **Active Response module** that executes automated scripts when specific security rules are triggered.

Configuration file location:

```
/var/ossec/etc/ossec.conf
```

Example Active Response configuration:

```xml
<active-response>
  <command>firewall-drop</command>
  <location>local</location>
  <rules_id>5710</rules_id>
  <timeout>3600</timeout>
</active-response>
```

Explanation:

- **command** → Script executed when the rule is triggered  
- **location** → Host where the response will run  
- **rules_id** → Detection rule for SSH brute force  
- **timeout** → Duration of IP block (3600 seconds = 1 hour)

---

# Attack Simulation

The brute-force attack was simulated using the **Hydra password cracking tool** from Kali Linux.

Example command used:

```
hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://192.168.74.132
```

This command repeatedly attempts SSH authentication using passwords from the wordlist.

---

# Active Response Script

The firewall block script used in this project is located at:

```
configs/firewall-drop-script.sh
```

The script blocks the attacker IP using the firewall command:

```
iptables -I INPUT -s <attacker-ip> -j DROP
```

This rule prevents the attacker from sending further requests to the target system.

---

# Repository Structure

```
Week-3-Active-Response
│
├── architecture
│
├── configs
│   ├── firewall-drop-script.sh
│   └── active-response-config.md
│
├── attack-simulation
│   └── hydra-attack-command.md
│
├── screenshots
│
├── verifications
│   └── week3-verification.md
│
└── README.md
```

---

# Verification

The system behavior was verified by performing the following checks:

1. Wazuh generated alerts for multiple failed SSH login attempts.
2. The Active Response script was triggered automatically.
3. The attacker IP address was blocked by the firewall.
4. Firewall rules were verified using the command:

```
iptables -L
```

Evidence screenshots are stored inside the **screenshots** directory.

---

# Result

The system successfully detected the SSH brute-force attack and automatically blocked the attacker IP address using the Wazuh Active Response module.

This confirms that the environment is capable of performing **automated intrusion prevention**.

---

# Conclusion

Week 3 implementation enhanced the SOC infrastructure by introducing **automated defense mechanisms**.

The system is now capable of:
- Detecting malicious login attempts
- Automatically executing defensive actions
- Blocking attackers in real time

This significantly improves the response capability of the Security Operations Center (SOC) environment.