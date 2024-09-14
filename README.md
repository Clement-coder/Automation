# Azure Infrastructure Automation with Terraform

![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

This repository contains **Terraform code** that automates the provisioning of various resources in **Microsoft Azure**, demonstrating Infrastructure as Code (IaC) best practices.

## 📋 Table of Contents

- [Overview](#-overview)
- [Architecture](#-architecture)
- [Prerequisites](#-prerequisites)
- [Quickstart](#-quickstart)
- [Module Details](#-module-details)
- [Contributing](#-contributing)
- [License](#-license)

## 🔭 Overview

This project showcases the power of Infrastructure as Code (IaC) using Terraform to automate the deployment of a comprehensive Azure environment. It's designed with modularity, flexibility, and maintainability in mind, making it suitable for both learning and production use.

### Key Features

- **Modular Design**: Easily plug-and-play different components.
- **Scalability**: Effortlessly scale your infrastructure up or down.
- **Best Practices**: Implements Azure and Terraform best practices.
- **Comprehensive Coverage**: Includes networking, compute, storage, and database resources.

## 🏗 Architecture

The project is organized into several **reusable modules**, each responsible for a specific aspect of the infrastructure:

![Architecture Diagram](https://via.placeholder.com/800x400.png?text=Azure+Infrastructure+Architecture)

1. **Resource Group** (`rgroup`): Logical container for resources.
2. **Networking** (`network`): Sets up the virtual network infrastructure.
3. **Common Services** (`common`): Provisions shared services like logging and backups.
4. **Linux VMs** (`vmlinux`): Deploys Linux-based virtual machines.
5. **Windows VM** (`vmwindows`): Deploys a Windows Server instance.
6. **Data Disks** (`datadisk`): Attaches additional storage to VMs.
7. **Load Balancer** (`loadbalancer`): Distributes incoming traffic.
8. **Database** (`database`): Sets up a managed PostgreSQL instance.

## 🛠 Prerequisites

Before you begin, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0+)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- An active [Azure account](https://azure.microsoft.com/free/)
- [Git](https://git-scm.com/downloads)

## 🚀 Quickstart

Follow these steps to get your infrastructure up and running:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/azure-terraform-automation.git
   cd azure-terraform-automation
   ```

2. **Log in to Azure**:
   ```bash
   az login
   ```

3. **Initialize Terraform**:
   ```bash
   terraform init
   ```

4. **Review the execution plan**:
   ```bash
   terraform plan
   ```

5. **Deploy the infrastructure**:
   ```bash
   terraform apply
   ```

6. **Clean up when you're done**:
   ```bash
   terraform destroy
   ```

## 📦 Module Details

### Resource Group Module (`rgroup`)
Creates an Azure Resource Group to logically group resources.

### Networking Module (`network`)
Sets up:
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)

### Common Services Module (`common`)
Provisions:
- Log Analytics Workspace
- Recovery Services Vault
- Standard Storage Account

### Linux VMs Module (`vmlinux`)
Deploys:
- 3x CentOS 8.2 Linux Virtual Machines
- Public IP addresses for each VM

### Windows VM Module (`vmwindows`)
Deploys:
- 1x Windows Server 2016 VM
- Public IP address

### Data Disks Module (`datadisk`)
Attaches:
- 4x 10GB data disks to the VMs

### Load Balancer Module (`loadbalancer`)
Sets up:
- Public-facing basic load balancer

### Database Module (`database`)
Provisions:
- Azure PostgreSQL Single Server instance

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

⭐️ If you find this project useful, please consider giving it a star on GitHub! ⭐️
