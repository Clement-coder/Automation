Automation using Terraform:

This repository contains the Terraform code which provisions various resources in Azure.

## Modules

This project is broken down into several modules:

1. Resource Group Module (rgroup): Provisions a resource group.
2. Networking Module (network): Provisions a virtual network and a subnet with a network security group.
3. Common Services Module (common): Provisions a log analytics workspace, a recovery services vault, and a standard storage account.
4. Linux VMs Module (vmlinux): Provisions three CentOS 8.2 Linux VMs with public IP addresses.
5. Windows VM Module (vmwindows): Provisions a Windows Server 2016 VM with a public IP address.
6. Data Disks Module (datadisk): Provisions and attaches four 10GB disks to the VMs.
7. Load Balancer Module (loadbalancer): Provisions a public-facing basic load balancer.
8. Database Module (database): Provisions an Azure DB for PostgreSQL Single Server instance.

##Usage

1. Clone this repository.
2. Run terraform init to initialize the plugins and backend, and download modules.
3. Run terraform validate to confirm there are no typos and syntax errors.
4. Run terraform plan and review the entire plan to confirm the deployment.
5. Run terraform apply --auto-approve to provision the infrastructure.
6. Run terraform state list | nl to validate the state.
7. Run terraform output to view the outputs.
8. Run terraform destroy --auto-approve to destroy the infrastructure when done.
