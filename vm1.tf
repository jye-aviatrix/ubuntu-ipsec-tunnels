module "vnet_1" {
  source = "./modules/vnet"
  resource_group_name = "rg1"
  location = var.location
  vnet_name = "vnet1"
  vnet_cidr = "10.16.1.0/24"
  subnet_1_cidr = "10.16.1.0/28"

}

module "vm1" {
  source = "./modules/public-vm"
  resource_group_name = module.vnet_1.resource_group_name
  location = module.vnet_1.location
  public_key_file = var.public_key_file
  private_key_file = var.private_key_file
  admin_username = var.admin_username
  subnet_id = module.vnet_1.subnet_id
  vm_name = "vm1"
}

output "vm1" {
  value = module.vm1
}

