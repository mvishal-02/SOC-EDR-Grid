# Ransomware Behavior Simulation

## Objective

The objective of this test is to simulate ransomware-like behavior and verify whether the SOC monitoring system detects it.

---

# Technique Used

MITRE ATT&CK Technique:

```
T1490 – Inhibit System Recovery
```

This technique deletes **Volume Shadow Copies**, which prevents file recovery after encryption.

---

# Attack Execution

The attack was executed using the Atomic Red Team framework.

Command executed:

```
Invoke-AtomicTest T1490
```

---

# Expected Behavior

The attack generates suspicious activity such as:

- Shadow copy deletion
- System recovery modification
- Suspicious command execution

---

# Detection

The Wazuh monitoring system detects the malicious activity and generates alerts mapped to the MITRE ATT&CK framework.