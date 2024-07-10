output "resource_group_name" {
  value = module.rgroup-n01650177.resource_group_name
}

output "vm_hostnames" {
  value = module.vmlinux-n01650177.vm_hostnames
}

output "vm_fqdns" {
  value = module.vmlinux-n01650177.vm_fqdns
}

output "private_ip_addresses" {
  value = module.vmlinux-n01650177.private_ip_addresses
}

output "public_ip_addresses" {
  value = module.vmlinux-n01650177.public_ip_addresses
}

output "linux_availability_set_name" {
  value = module.vmlinux-n01650177.linux_availability_set_name
}

output "windows_vm_hostname" {
  value = module.vmwindows-n01650177.windows_vm_hostname
}

output "windows_vm_fqdn" {
  value = module.vmwindows-n01650177.windows_vm_fqdn
}

output "windows_private_ip" {
  value = module.vmwindows-n01650177.windows_private_ip
}

output "windows_public_ip" {
  value = module.vmwindows-n01650177.windows_public_ip
}

output "windows_availability_set_name" {
  value = module.vmwindows-n01650177.windows_availability_set_name
}
output "data_disk_ids" {
  value = module.datadisk-n01650177.data_disk_ids
}
output "load_balancer_name" {
  value = module.loadbalancer-n01650177.load_balancer_name
}

output "load_balancer_pip" {
  value = module.loadbalancer-n01650177.load_balancer_pip
}
output "postgres_server_name" {
  value = module.database-n01650177.postgres_server_name
}

output "postgres_db_name" {
  value = module.database-n01650177.postgres_db_name
}

output "postgres_server_fqdn" {
  value = module.database-n01650177.postgres_server_fqdn
}
