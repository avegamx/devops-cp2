output "myPublicIp1" {
  value = azurerm_linux_virtual_machine.myVM1.public_ip_address
}

output "myPublicIp2" {
  value = azurerm_linux_virtual_machine.myVM2.public_ip_address
}

output "myPublicIp3" {
  value = azurerm_linux_virtual_machine.myVM3.public_ip_address
}

