# Terraform Assignment 1 – Virtual Machines & Networking

## Objective
This project deploys a secure Linux web server on Microsoft Azure using reusable Terraform modules.  
The deployment includes networking, security rules, and a virtual machine running a web server (NGINX/Apache).

## Modules Used
The project uses reusable Terraform modules stored in the **modules/** directory.

### 1. Virtual Network Module
Creates the networking components:
- Virtual Network
- Subnet

### 2. Network Security Group Module
Creates a Network Security Group with inbound rules:
- Allow **SSH (Port 22)**
- Allow **HTTP (Port 80)**

### 3. Virtual Machine Module
Creates a Linux Virtual Machine with:
- Public IP
- Network Interface
- Web server installation using cloud-init or custom script

