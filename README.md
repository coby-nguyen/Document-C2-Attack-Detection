# Document-C2-Attack-Detection
## I. Project:
The goal of this project is to simulate a real cyber attack and endpoint detection and response. In this project, I will use Wazuh as an XDR and SIEM solution, including a Wazuh Manager/Server and a Wazuh Agent. The attack machine will utilize 'Havoc' as a C2 framework to target a Windows endpoint machine that is running the Wazuh Agent.

<img width="1232" height="772" alt="image" src="https://github.com/coby-nguyen/Document-C2-Attack-Detection/blob/main/images/havoc-project.png" />
<p align = "center"><em>Figure 1 - Overall flow of the simulation </em></p>

## II. Setup
This lab includes two Kali Linux VMs and one Windows 11 VM. The first Kali Linux machine will be installed with the Havoc C2 Framework as the primary attack tool, while the second machine will run the Wazuh Manager, receiving logs and events from the agent, and performing active responses when alerts are triggered. The victim machine will run on Windows 11, including the Wazuh Agent integrated with Sysmon. Moreover, YARA will be integrated with Wazuh for malware scanning and active response. 

Three machines will have the following IP addresses:
- Attacker Machine (Kali Linux): 192.168.0.103
- Wazuh Server (Kali Linux): 192.168.0.102
- Victim Machine (Windows 11): 192.168.0.97

### Attack Machine
- The Havoc C2 Framework (https://havocframework.com/) has been installed on one of my Kali Linux machines. The first step is starting the Havoc Teamserver, which is the core server that creates listeners, interacts with agents, and handles the operator's commands.

<img width="1084" height="653" alt="image" src="https://github.com/user-attachments/assets/82ef2e86-a73b-4010-8e95-40f62134f516" />

<p></p>

- After that, I will start the Havoc Client with the default credentials. The Havoc Client connects to the Teamserver and provides a User Interface (UI) and management of beacons, listeners, payloads, and so much more.

<img width="1664" height="638" alt="image" src="https://github.com/user-attachments/assets/d0c9abc9-d836-40bd-854b-c2a8c083ca92" />

<p></p>

- To execute payloads and interact with agents, we need a Havoc listener, which can be created in the Havoc Client UI. After being successfully authenticated to the Client UI, I will create a listener.

<img width="599" height="804" alt="image" src="https://github.com/user-attachments/assets/cd178bbe-10fd-4176-87f5-a9c7e2eb08f9" />

<img width="737" height="255" alt="image" src="https://github.com/user-attachments/assets/a9f73a49-d74b-4f3d-b2f1-f6cc96e0b7c5" />


Compiling payloads

### Wazuh Server

### Victim Machine

## III. Simulation

### Attack
Hosting an HTTP server with Python (python -m http.server 80)
### Defense
