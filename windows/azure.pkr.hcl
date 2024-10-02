source "azure-arm" "vm" {
 
  client_id       = var.client_id
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  
  location                          = "Southeast Asia"
  managed_image_name                = "aztf-w2022v2"
  managed_image_resource_group_name = "node_poc_azure_webapp"
  
  communicator                      = "winrm"
  winrm_use_ssl                     = true
  winrm_insecure                    = true
  winrm_timeout                     = "5m"
  winrm_username                    = "packer"
  os_type                           = "Windows"
  image_offer                       = "WindowsServer"
  image_publisher                   = "MicrosoftWindowsServer"
  image_sku                         = "2022-Datacenter"
  image_version                     = "1.0.0"
  vm_size                           = "Standard_B1s"
  #generation                        = "V2"
  # data_disks {
  #   lun                  = 0
  #   storage_account_type = "Standard_LRS"
  #   disk_size_gb         = 64
  # }

  # data_disks {
  #   lun                  = 1
  #   storage_account_type = "Standard_LRS"
  #   disk_size_gb         = 64
  # }

  #allowed_inbound_ip_addresses      = [var.my_ip_address]

#  managed_identity {
#     client_id = "63b12b55-67c8-49f1-8509-f9ca1be2808c"
#  }

}