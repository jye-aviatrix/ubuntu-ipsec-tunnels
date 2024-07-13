

variable "location" {
  type = string
  default = "East US 2"
}

variable "vnet_1_name" {
  type = string
  default = "vnet1"
}

variable "vnet_2_name" {
  type = string
  default = "vnet2"
}

variable "vnet_1_cidr" {
  type = string
  default = "10.16.1.0/24"
}

variable "vnet_2_cidr" {
  type = string
  default = "10.16.2.0/24"
}

variable "vnet_1_subnet_1_cidr" {
  type = string
  default = "10.16.1.0/28"
}

variable "vnet_2_subnet_1_cidr" {
  type = string
  default = "10.16.2.0/28"
}

variable "admin_username" {
  type = string
  default = "ubuntu"
}

variable "public_key_file" {
  type = string
  description = "Provide path to public key file"
}