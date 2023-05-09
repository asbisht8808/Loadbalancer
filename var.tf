variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "location of the deployed "
  type        = string
  default     = "East US"
}

variable "vnet" {
  type = string
}

variable "subnet1" {
  type = string
}
variable "subnet2" {
  type = string
}

variable "container_name" {
  description = "Container's Name"
  type        = string
}

variable "address_space" {
  type = list(any)
}

variable "address_prefixes1" {
  type = list(any)
}

variable "address_prefixes2" {
  type = list(any)
}

variable "vm_name1" {
  type = string
}

variable "vm_name2" {
  type = string
}
#variable "linux_vm_size" {
# type = string
#}

#variable "windows_vm_size" {
# type = string
#}

variable "linux_vm_os_disk_size" {
  type = number
}

variable "windows_vm_os_disk_size" {
  type = number
}

variable "storage_account_name" {
  type = string
}

variable "account_tier" {
    type = string
}

variable "account_replication_type" {
    type = string  
}

variable "vm_size" {
  type = string
}