# Week 3 – Active Response Configuration

## Objective
The objective of this phase is to implement an automated defense mechanism where the system detects SSH brute-force attacks and automatically blocks the attacker's IP address using firewall rules.

This is implemented using the **Wazuh Active Response module**.

---

# Attack Scenario

1. An attacker performs multiple failed SSH login attempts.
2. Wazuh agent detects repeated authentication failures.
3. Wazuh manager triggers a rule for brute-force detection.
4. Active Response executes a firewall block script.
5. The attacker's IP is automatically banned.

---

# Wazuh Active Response Configuration

The configuration is defined inside:
