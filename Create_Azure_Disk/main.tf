provider "azurerm" {
  features {}
}

resource "azurerm_managed_disk" "example" {
  name                 = var.diskname
  location             = var.location  # Replace with your desired location
  resource_group_name  = var.resourcegroup  # Replace with your existing resource group name
  storage_account_type = var.st_acc_type
  create_option        = "Empty"
  disk_size_gb         = var.disksize  # Replace with the desired disk size in GB

  tags = {
    "Owner" : var.Owner
    "Project" : var.Project
    "Duration" : var.Duration
  }
}