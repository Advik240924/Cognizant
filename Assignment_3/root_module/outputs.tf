output "public_ips" {
  value = module.public_ip.public_ips["pip1"]
}