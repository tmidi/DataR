# dev_public
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.vpc-123456789.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw_internet.id}"
  }

  tags {
    Name = "route-public"
  }
}

resource "aws_route_table_association" "public_1a" {
  subnet_id      = "${aws_subnet.subnet-123.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public_1b" {
  subnet_id      = "${aws_subnet.subnet-456.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public_1c" {
  subnet_id      = "${aws_subnet.subnet-789.id}"
  route_table_id = "${aws_route_table.public.id}"
}
