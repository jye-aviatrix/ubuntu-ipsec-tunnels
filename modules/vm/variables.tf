variable "vm_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "public_key_file" {
  type = string
}

variable "size" {
    type = string
    default = "Standard_B1ms"
}