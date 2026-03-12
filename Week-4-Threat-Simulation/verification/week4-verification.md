# Week 4 – Threat Simulation Verification

## Objective

The objective of this phase was to verify that the SOC monitoring system can detect simulated attack techniques executed using the Atomic Red Team framework.

---

# Test Scenario

Attack Type:

Ransomware Behavior Simulation

Technique Used:

MITRE ATT&CK T1490 – Inhibit System Recovery

---

# Execution

The attack simulation was executed using:

```
Invoke-AtomicTest T1490
```

---

# Detection

The Wazuh monitoring system detected the suspicious activity and generated alerts.

Alert included:

- Technique ID
- Host information
- Event timestamp
- Rule description

---

# Visualization

The attack sequence was visualized in the **Kibana/OpenSearch dashboard**, allowing analysts to observe the full attack chain.

---

# Evidence

Evidence collected includes:

1. Atomic Red Team execution logs
2. Wazuh alert screenshots
3. MITRE ATT&CK mapping in dashboard

Screenshots stored in:

```
Week-4-Threat-Simulation/screenshots
```

---

# Result

The SOC monitoring infrastructure successfully detected the simulated attack and mapped it to the MITRE ATT&CK framework.

---

# Conclusion

The threat simulation confirmed that the system can detect advanced attack techniques and provide visibility into the attack lifecycle.