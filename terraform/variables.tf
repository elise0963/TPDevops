variable "vm_web_name" {
  description = "Nom de la VM Web"
  type        = string
}

variable "vm_db_name" {
  description = "Nom de la VM DB"
  type        = string
}

variable "vm_memory" {
  description = "RAM des VMs"
  type        = number
}

variable "vm_cores" {
  description = "Nombre de CPU"
  type        = number
}
