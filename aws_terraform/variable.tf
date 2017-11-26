variable "region" {
  description = "AWS region provider"
  default     = "us-east-1"
}

variable "subnet" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "map"
  default = {
    "us-east-1a" = "subnet-123"
    "us-east-1b" = "subnet-456"
    "us-east-1c" = "subnet-789"
  }
}

variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c",]
}

variable "amazon_ami" {
  # ami-0987654 (Base AMI with Centos 7)
  description = "AWS AMI used for MongoDB instances"
  default     = "ami-4af5022c"
}

variable "ssh_key_name" {
  description = "SSH Key name"
  default     = "Taleeb_Midi-Key"
}

variable "ssh_public_key" {
  description = "SSH Public key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+w5eKA3HpTCB2hsFbTHaDEvsmk4ypZDIS5+qXXwAjeIK+J3Mpa8odWezaeXZ467KIKmiI0q+9jmtcXqKN74cjEHtnemZQ0gOrKl9Ix1PN61kdwXns/fKPtlNwbztM9vef4tcYN2LhzANiLt7fKnbDr3hRgA0fSZds7XFbYz79GcRQUxZ7eHQM5sU0BywdzgzP5Duw53djnP34SLEnBkEAoC9mV98Od+QlO35wWRVBY2ND0Alz8JOnLP1MMRBjcalpGP59Rv+JSMcKoe6cYMdjTzjwwpWmEvmdRWmd1MKBjIKQ/Ves2+t8Ou60f32m3piAZ38nWlEJUGWbG8idjfHtC2u7PuL2JNkDToYmVE8NsVkIpSjwUfiG09znr7DnVF2jNw2TcIanpbmu4TAq5jFAnawVeR6n29uCxpaSrQXJ1XdnDw+EQH6d6RVABxcYlJCdx2ZTwZfyYwdKbOXBEh8X6dzErWcsuzzaKQmu/oZId7aIdJvwpo7xcdOP+jR5Lghh3x2VDtB7ygEATbYbzgKKtjgsrebK/SP+VI0FoScoSc2t/y04tYldV4Gmv2YbMcC4oOJLUhHwJzJ9szDsurUpvfm1MnuhRyPyPZujntIBtUB65t8AJq0Cq/O81r8C3su8XLWu4VorOu/1m+Z/U6g2F9xdUwXK9UaWfDniZDmh3w== Ubuntu key"
}
