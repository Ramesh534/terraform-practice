#----root/outputs.tf-----

#----storage outputs------
output "Bucket Name" {
  value = "${module.storage.bucketname}"
}

## networking outputs

output "public subnets" {
  value = "${join(", ", module.network.public_subents)}"
}

output "Subnet ips" {
  value = "${join(", ", module.network.subnet_ips)}"
}

# compute outputs
output "public instance ids" {
  value = "${module.compute.server_id}"
}

output "public instance ips" {
  value = "${module.compute.server_ip}"
}