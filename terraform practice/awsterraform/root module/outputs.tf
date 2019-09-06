# root/output.tf#

# storage output ##

output "Bucket name" {
  value = "${module.storage.bucketname}"
}