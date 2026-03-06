# Terraform Assignment 2 – System Patch Management

## Objective
This project automates system patch management in Microsoft Azure using Terraform and reusable modules.  
Azure Automation Update Management is used to monitor and deploy patches to virtual machines.

## Modules Used
Reusable Terraform modules are stored in the **Assignment_3/modules/** directory.

### 1. Automation Account Module
Creates an Azure Automation Account required for Update Management.

### 2. Log Analytics Workspace Module
Creates a Log Analytics Workspace used for collecting update and compliance data.

### 3. Update Management Module
Configures Azure Update Management to manage patching for virtual machines.

