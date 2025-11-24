# Document-C2-Attack-Detection
## Project:
The goal of this project is to simulate a real cyber attack and endpoint detection and response. In this project, I will use Wazuh as an XDR and SIEM solution, including a Wazuh Manager/Server and a Wazuh Agent. The attack machine will utilize 'Havoc' as a C2 framework to target a Windows endpoint machine that is running the Wazuh Agent.

<img width="1232" height="772" alt="image" src="https://github.com/coby-nguyen/Document-C2-Attack-Detection/blob/main/images/havoc-project.png" />
<p align = "center"><em>Figure 1 - Overall flow of the simulation </em></p>

## Setup
This lab includes two Kali Linux VMs and one Windows 11 VM. The first Kali Linux machine will be installed with the Havoc C2 Framework as the primary attack tool, while the second machine will run the Wazuh Manager, receiving logs and events from the agent, and performing active responses when alerts are triggered. The victim machine will run on Windows 11, including the Wazuh Agent integrated with Sysmon. Moreover, YARA will be integrated with Wazuh for malware scanning and active response. 

### Attack Machine

### Wazuh Server

### Victim Machine

## Simulation

### Attack

### Defense
