resource "aws_default_network_acl" "default" {
  default_network_acl_id = "${aws_vpc.vpc-123456789.default_network_acl_id}"

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  subnet_ids = [
    "${aws_subnet.subnet-123.id}",
    "${aws_subnet.subnet-456.id}",
    "${aws_subnet.subnet-789.id}",
  ]

  tags {
    Name = "acl-default"
  }
}
