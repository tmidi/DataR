resource "aws_default_vpc_dhcp_options" "default" {
  tags {
    Name = "default"
  }
}

resource "aws_vpc_dhcp_options_association" "default" {
  vpc_id          = "${aws_vpc.vpc-123456789.id}"
  dhcp_options_id = "${aws_default_vpc_dhcp_options.default.id}"
}
