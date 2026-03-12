# Atomic Red Team Commands

## Objective

The Atomic Red Team framework is used to simulate real-world adversary techniques in a controlled environment.

---

# Installation

Install Atomic Red Team using PowerShell:

```
Install-Module -Name Invoke-AtomicRedTeam -Force
```

Import the module:

```
Import-Module Invoke-AtomicRedTeam
```

---

# Example Test – Shadow Copy Deletion (MITRE T1490)

This technique simulates ransomware behavior by deleting volume shadow copies.

Command:

```
Invoke-AtomicTest T1490
```

---

# MITRE Technique

Technique ID:

```
T1490
```

Description:

```
Inhibit System Recovery
```

This technique is commonly used by ransomware to prevent recovery of encrypted files.