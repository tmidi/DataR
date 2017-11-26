resource "aws_route53_zone" "test" {
  name         = "test.com."
}

resource "aws_route53_record" "node1" {
  zone_id = "${aws_route53_zone.test.zone_id}"
  name    = "node1.${aws_route53_zone.test.name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.mongodb_us-east-1a.public_dns}"]
}

resource "aws_route53_record" "node2" {
  zone_id = "${aws_route53_zone.test.zone_id}"
  name    = "node2.${aws_route53_zone.test.name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.mongodb_us-east-1b.public_dns}"]
}

resource "aws_route53_record" "node3" {
  zone_id = "${aws_route53_zone.test.zone_id}"
  name    = "node3.${aws_route53_zone.test.name}"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.mongodb_us-east-1c.public_dns}"]
}
