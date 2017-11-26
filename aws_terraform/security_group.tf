resource "aws_default_security_group" "sg_default" {
  vpc_id = "${aws_vpc.vpc-123456789.id}"

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "default"
  }
}

resource "aws_security_group" "docker_ephemeral_port_range" {
  name        = "dev_docker_ephemeral_port_range"
  description = "open docker ephemeral port range"
  vpc_id      = "${aws_vpc.vpc-123456789.id}"

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 32768
    to_port   = 61000
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "docker-ephemeral-port-range"
  }
}

resource "aws_security_group" "sg_elb_web" {
  name        = "elb_web"
  description = "open http, https port for elb web service"
  vpc_id      = "${aws_vpc.vpc-123456789.id}"

  ingress {
    protocol    = "tcp"
    self        = true
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "tcp"
    self        = true
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "elb-web"
  }
}
