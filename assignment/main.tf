module "rgroup-n01650177" {
  source = "./modules/rgroup-n01650177"
  resource_group_name = "n01650177-RG"  
  location  = "Canada Central"  
}
module "network-n01650177" {
  source                = "./modules/network-n01650177"
  vnet_name             = "n01650177-VNET"
  vnet_address_space    = ["10.0.0.0/16"]
  location              = module.rgroup-n01650177.location
  resource_group_name   = module.rgroup-n01650177.resource_group_name
  subnet_name           = "n01650177-SUBNET"
  subnet_address_prefix = ["10.0.1.0/24"]
  nsg_name              = "n01650177-nsg"
}
module "common-n01650177" {
  source = "./modules/common-n01650177"
  location            = module.rgroup-n01650177.location
  resource_group_name = module.rgroup-n01650177.resource_group_name
}

module "vmlinux-n01650177" {
  source              = "./modules/vmlinux-n01650177"
  location            = module.rgroup-n01650177.location
  resource_group_name = module.rgroup-n01650177.resource_group_name
  subnet_id           = module.network-n01650177.subnet_id
  storage_account_uri = module.common-n01650177.primary_blob_endpoint
  admin_username      = "n01650177"
  public_key     = "/home/N01650177/.ssh/id_rsa.pub"
  private_key    = "/home/N01650177/.ssh/id_rsa"
  linux_avs           = "Linux_avs"
  linux_vms           = { "linux-vm1" = "vm1dns", "linux-vm2" = "vm2dns", "linux-vm3" = "vm3dns" }
}

module "vmwindows-n01650177" {
  source              = "./modules/vmwindows-n01650177"
  resource_group_name = module.rgroup-n01650177.resource_group_name
  location            = module.rgroup-n01650177.location
  subnet_id           = module.network-n01650177.subnet_id
  storage_account_uri = module.common-n01650177.primary_blob_endpoint
  admin_username      = "n01650177"
  admin_password      = "Password@123"  
  windows_avs         = "Windows_avs"
}
module "datadisk-n01650177" {
  source              = "./modules/datadisk-n01650177"
  location            = module.rgroup-n01650177.location
  resource_group_name = module.rgroup-n01650177.resource_group_name
  linux_vm_ids        = module.vmlinux-n01650177.vm_ids
  windows_vm_id       = module.vmwindows-n01650177.vm_id[0]
}
module "loadbalancer-n01650177" {
  source              = "./modules/loadbalancer-n01650177"
  location            = module.rgroup-n01650177.location
  resource_group_name = module.rgroup-n01650177.resource_group_name
  linux_nic_ids       = module.vmlinux-n01650177.nic_ids
}
module "database-n01650177" {
  source              = "./modules/database-n01650177"
  location            = module.rgroup-n01650177.location
  resource_group_name = module.rgroup-n01650177.resource_group_name
  db_username         = "psqladmin"
  db_password         = "Password@123"
}
