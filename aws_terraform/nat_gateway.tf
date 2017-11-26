resource "aws_nat_gateway" "gw_1a" {
  allocation_id = "${aws_eip.nat_eip_1a.id}"
  subnet_id     = "${aws_subnet.subnet-123.id}"
}

resource "aws_nat_gateway" "gw_1b" {
  allocation_id = "${aws_eip.nat_eip_1b.id}"
  subnet_id     = "${aws_subnet.subnet-456.id}"
}

resource "aws_nat_gateway" "gw_1c" {
  allocation_id = "${aws_eip.nat_eip_1c.id}"
  subnet_id     = "${aws_subnet.subnet-789.id}"
}
