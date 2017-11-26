resource "aws_subnet" "subnet-123" {
  vpc_id            = "${aws_vpc.vpc-123456789.id}"
  availability_zone = "${var.azs[0]}"
  cidr_block        = "10.10.1.0/24"

  tags {
    Name = "${var.azs[0]}_public"
  }
}

resource "aws_subnet" "subnet-456" {
  vpc_id            = "${aws_vpc.vpc-123456789.id}"
  availability_zone = "${var.azs[1]}"
  cidr_block        = "10.10.2.0/24"

  tags {
    Name = "${var.azs[1]}_public"
  }
}

resource "aws_subnet" "subnet-789" {
  vpc_id            = "${aws_vpc.vpc-123456789.id}"
  availability_zone = "${var.azs[2]}"
  cidr_block        = "10.10.3.0/24"

  tags {
    Name = "${var.azs[1]}_public"
  }
}
