# root/output.tf#

# storage output ##

output "Bucket name" {
  value = "${module.s3.bucketname}"
}