# Create VPC
resource "aws_vpc" "vpc-123456789" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "DataRobot"
  }
}
