provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "cloud-demo"
    storage_account_name = "testcloud001423"
    container_name       = "terraform"
    key                  = "terraformstart.tfstate"
  }
}

# Fetch the existing VM details
data "azurerm_virtual_machine" "existing_vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
}

# Resource to start the VM using a local-exec provisioner
resource "null_resource" "start_vm" {
  provisioner "local-exec" {
    command = <<EOT
      az vm start --resource-group ${var.resource_group_name} --name ${var.vm_name}
    EOT
  }

  # triggers = {
  #   vm_id = data.azurerm_virtual_machine.existing_vm.id
  # }
}
