output "web_vm_ip" {
  description = "Adresse IP de la VM Web"
  value       = proxmox_vm_qemu.web.default_ipv4_address
}

output "db_vm_ip" {
  description = "Adresse IP de la VM DB"
  value       = proxmox_vm_qemu.db.default_ipv4_address
}
