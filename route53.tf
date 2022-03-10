resource "aws_route53_zone_association" "assos" {
  vpc_id = aws_vpc.main.id
  zone_id = data.aws_route53_zone.internal.id
}