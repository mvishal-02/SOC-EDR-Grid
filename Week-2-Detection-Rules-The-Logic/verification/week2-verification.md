# Week 2 – Detection Rules Verification

## Objective

The objective of this phase was to verify that the **File Integrity Monitoring (FIM)** system correctly detects unauthorized file modifications and generates alerts.

---

# Test Scenario

Test Type:  
File Integrity Monitoring (FIM)

Target System:  
Linux Server with Wazuh Agent

Monitored Directory:

```
/etc
```

---

# Test Procedure

### Step 1 – Modify a Monitored File

A monitored file was manually modified to simulate unauthorized changes.

Example command:

```
echo "test change" >> /etc/passwd
```

---

### Step 2 – Log Collection

The Wazuh Agent detected the file modification and generated a log event.

The event included:

- File path
- File checksum change
- Timestamp

---

### Step 3 – Event Analysis

The event was sent to the **Wazuh Manager**, where the rule engine analyzed the log.

A detection rule related to **File Integrity Monitoring** was triggered.

---

# Alert Generated

Example alert message:

```
Integrity checksum changed for monitored file
```

Severity Level:  
High

---

# Dashboard Verification

The alert appeared in the **Wazuh Dashboard** within a few seconds of the file modification.

The alert contained:

- File path
- Timestamp
- Agent ID
- Rule description

---

# Evidence

The following evidence was collected:

1. Screenshot of file modification command
2. Screenshot of Wazuh alert in dashboard
3. Screenshot of FIM event logs

All screenshots are stored in:

```
Week-2-Detection-Rules/screenshots
```

---

# Result

The system successfully detected the unauthorized file modification and generated a security alert.

This confirms that the **File Integrity Monitoring (FIM)** configuration is functioning correctly.

---

# Conclusion

Week 2 successfully implemented the **detection logic layer** of the SOC-EDR Grid.

The system is now capable of:

- Monitoring critical system files
- Detecting unauthorized changes
- Generating alerts for SOC analysts