# Week 3 – SSH Brute Force Simulation

## Objective

To simulate an SSH brute-force attack against the Linux target server in order to trigger Wazuh detection rules and verify the Active Response mechanism.

The attack was performed using the **Hydra password cracking tool**.

---

# Environment

Attacker Machine:
Kali Linux

Target Machine:
SOC Linux Server

Service Targeted:
SSH (Port 22)

---

# Hydra Command Used
hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://0.0.0.0

---

# Command Explanation

| Parameter | Description |
|------|------|
| hydra | Password cracking tool |
| -l root | Target username |
| -P | Password wordlist |
| ssh:// | Target protocol |
| 0.0.0.0 | Target server IP |

---

# Attack Flow

1. Hydra sends multiple login attempts to the SSH server.
2. The SSH service logs repeated authentication failures.
3. Wazuh agent collects these logs.
4. Wazuh manager detects brute-force activity.
5. Active Response script is triggered.

---

# Expected Detection

Wazuh Rule Triggered: Rule ID: 5710
Description: Multiple SSH authentication failures detected.

---

# Expected Response

Once the threshold is reached:

• Wazuh triggers Active Response  
• Firewall rule is applied  
• Attacker IP is blocked  

---

# Verification

After the attack: iptables -L
This command confirms that the attacker IP has been dropped by the firewall.

---