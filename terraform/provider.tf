terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">=2.9"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://192.168.1.113:8006/api2/json"
  pm_user = "terraform@pve"
  pm_password = "admin16*"
  pm_tls_insecure = true
}

