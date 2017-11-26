resource "aws_internet_gateway" "gw_internet" {
  vpc_id = "${aws_vpc.vpc-123456789.id}"

  tags {
    Name = "internet gateway"
  }
}
