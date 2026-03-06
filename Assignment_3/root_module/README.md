# Terraform Assignment 3 – Full Environment Using Modules

## Objective
This project creates a complete Azure environment by combining previously created Terraform modules.  
The environment includes networking, a virtual machine, and automated patch management.

## Architecture
The deployment includes:

- Virtual Network and Subnet
- Network Security Group (NSG)
- Linux Virtual Machine
- Azure Automation Account
- Log Analytics Workspace
- Update Management configuration for patching

The VM is connected to **Update Management** for automated patch deployment.

## Modules Used

### Networking Modules
- Virtual Network
- Network Security Group

### Compute Module
- Virtual Machine

### Patch Management Modules
- Automation Account
- Log Analytics Workspace
- Update Management

### Environment Configuration

The deployment uses environment-specific tfvars files.
By modifying the values inside the .tfvars file, the same Terraform code can deploy different environments such as dev, preprod, or prod.

For example:

prod.tfvars → creates production resources
preprod.tfvars → creates pre-production resources
dev.tfvars → creates development resources

To create a different environment, simply change the resource naming in the tfvars file (for example replace prod with dev).

Example:    prod-app-rg → change to → dev-app-rg


Initialize Terraform:   terraform init

Deploy in Production Environment:   terraform apply -var-file="prod.tfvars"

Deploy in Pre-Production Environment:   terraform apply -var-file="preprod.tfvars"

Deploy in Development Environment:  terraform apply -var-file="dev.tfvars"

This approach allows us to do the same Terraform codebase to be reused across multiple environments with only variable changes.
