##  Google_cloud  ip adderess
output "gcp_instance_public_ip" {
  value = google_compute_instance.my_instance.network_interface.0.access_config.0.nat_ip
}
output "gcp_instance_private_ip" {
  value = google_compute_instance.my_instance.network_interface.0.network_ip
}

##  AWS ip adderess
output "aws_instance_public_ip" {
  value = aws_instance.example_instance.public_ip
}
output "aws_instance_private_ip" {
  value = aws_instance.example_instance.private_ip
}

##  Azure ip adderess
output "azure_private_ip_adderess" {
  value = azurerm_network_interface.example.private_ip_address
}
output "azure_public_ip_adderess" {
  value = azurerm_network_interface.example.ip_configuration[0].public_ip_address
}
