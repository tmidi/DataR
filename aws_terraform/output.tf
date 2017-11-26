output "vpc_id" {
  description = "VPC ID"
  value       = "${aws_vpc.vpc-123456789.id}"
}

output "bastion_ip" {
  description = "Public IP Address for Bastion"
  value = "${aws_instance.bastion_1a.public_ip}"
}

output "instances_ip_us-east-1a" {
  description = "Public IP Address for MongoDB instances"
  value = "${aws_instance.mongodb_us-east-1a.*.public_ip}"
}

output "instances_ip_us-east-1b" {
  description = "Public IP Address for MongoDB instances"
  value = "${aws_instance.mongodb_us-east-1b.*.public_ip}"
}

output "instances_ip_us-east-1c" {
  description = "Public IP Address for MongoDB instances"
  value = "${aws_instance.mongodb_us-east-1c.*.public_ip}"
}