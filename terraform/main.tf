resource "proxmox_vm_qemu" "web" {
  name        = "vm-web-el"
  target_node = "pve"
  clone       = "Template-linux"

  cores  = 2
  memory = 2048
  sockets = 1

  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"


  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  ipconfig0 = "ip=dhcp"
}

resource "proxmox_vm_qemu" "db" {
  name        = "vm-db-el"
  target_node = "pve"
  clone       = "Template-linux"

  cores  = 2
  memory = 2048
  sockets = 1

  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  ipconfig0 = "ip=dhcp"
}
