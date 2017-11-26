resource "aws_security_group" "mongodb_instances" {
  name        = "instances"
  description = "open ssh and MongoDB (27018) port for bastion"

  vpc_id = "${aws_vpc.vpc-123456789.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 27018
    to_port     = 27018
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "instances"
  }
}

resource "aws_instance" "mongodb_us-east-1a" {
  ami               = "${var.amazon_ami}"
  availability_zone = "${var.azs[0]}"
  instance_type     = "t2.nano"
  key_name          = "${var.ssh_key_name}"

  vpc_security_group_ids = [
    "${aws_security_group.mongodb_instances.id}",
  ]

  subnet_id                   = "${aws_subnet.subnet-456.id}"
  associate_public_ip_address = true

  ebs_block_device {
    device_name           = "/dev/sdf"
    volume_size           = 1000
    volume_type           = "standard"
    delete_on_termination = true
  }

  tags {
    Name = "db_east-1"
  }
}

resource "aws_instance" "mongodb_us-east-1b" {
  ami               = "${var.amazon_ami}"
  availability_zone = "${var.azs[1]}"
  instance_type     = "t2.nano"
  key_name          = "${var.ssh_key_name}"

  vpc_security_group_ids = [
    "${aws_security_group.mongodb_instances.id}",
  ]

  subnet_id                   = "${aws_subnet.subnet-456.id}"
  associate_public_ip_address = true

  ebs_block_device {
    device_name           = "/dev/sdf"
    volume_size           = 1000
    volume_type           = "standard"
    delete_on_termination = true
  }

  tags {
    Name = "db_east-1b"
  }
}

resource "aws_instance" "mongodb_us-east-1c" {
  ami               = "${var.amazon_ami}"
  availability_zone = "${var.azs[2]}"
  instance_type     = "t2.nano"
  key_name          = "${var.ssh_key_name}"

  vpc_security_group_ids = [
    "${aws_security_group.mongodb_instances.id}",
  ]

  subnet_id                   = "${aws_subnet.subnet-456.id}"
  associate_public_ip_address = true

  ebs_block_device {
    device_name           = "/dev/sdf"
    volume_size           = 1000
    volume_type           = "standard"
    delete_on_termination = true
  }

  tags {
    Name = "db_east-1c"
  }
}
