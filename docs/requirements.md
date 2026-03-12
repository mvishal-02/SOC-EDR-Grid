# System Requirements – SOC-EDR Grid Project

## 1. Hardware Requirements

| Component | Minimum Requirement        | Recommended         |
| --------- | -------------------------- | ------------------- |
| CPU       | Dual Core Processor        | Quad Core Processor |
| RAM       | 4 GB                       | 8 GB or Higher      |
| Storage   | 40 GB Free Disk Space      | 80 GB or Higher     |
| Network   | Stable LAN/Virtual Network | High-Speed LAN      |

---

## 2. Software Requirements

### Operating Systems

* Ubuntu Server 22.04 LTS (SOC Server / Wazuh Manager)
* Kali Linux (Attacker Machine for Threat Simulation)
* Windows 10 / Windows Server (Endpoint Agent)

---

### Security Monitoring Stack

* Wazuh Manager
* Wazuh Agent
* Elastic Stack (Elasticsearch, Kibana)
* Sysmon (for Windows Event Logging)

---

### Networking Tools

* Tailscale (Secure Mesh VPN for node communication)
* SSH (Secure Remote Access)

---

### Threat Simulation Tools

* Atomic Red Team
* PowerShell
* MITRE ATT&CK Techniques

---

### Development & Version Control

* Git
* GitHub Repository
* Markdown for Documentation

---

## 3. Network Architecture Requirements

* SOC Server configured as central monitoring node
* Endpoint agents installed on monitored systems
* Secure communication via Tailscale VPN
* Log forwarding enabled from agents to Wazuh Manager
* Real-time alert monitoring through Kibana dashboard

---

## 4. Functional Requirements

1. Collect security logs from multiple endpoints.
2. Analyze logs using Wazuh detection rules.
3. Detect suspicious activities and potential attacks.
4. Trigger alerts in the SOC dashboard.
5. Perform threat simulation to validate detection capability.
6. Generate reports and screenshots for analysis.

---

## 5. Non-Functional Requirements

* Real-time monitoring capability
* Secure communication between nodes
* Reliable log ingestion
* Scalable architecture
* Easy documentation and reproducibility

---

## 6. Project Environment

| Component        | Role                                    |
| ---------------- | --------------------------------------- |
| SOC Server       | Central Wazuh Manager and analysis node |
| Kali Linux       | Attack simulation environment           |
| Windows Endpoint | Log generation and monitoring           |
| GitHub           | Version control and collaboration       |
| Tailscale VPN    | Secure connectivity between nodes       |

---

## 7. Documentation Requirements

* Architecture Diagram
* Weekly Implementation Reports
* Screenshots of Detection Events
* Threat Simulation Evidence
* Final Project Report

