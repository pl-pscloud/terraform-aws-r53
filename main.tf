resource "aws_route53_zone" "pscloud-primary" {
  name = var.pscloud_domain_name

  tags = {
    Name = "${var.pscloud_company}_r53_zone_${var.pscloud_env}"
  }
}

resource "aws_route53_record" "pslab-record-A" {
  for_each =  var.pscloud_domain_records_A

  zone_id = aws_route53_zone.pscloud-primary.zone_id
  name = each.key
  type = "A"
  ttl = 300
  records = each.value

}

resource "aws_route53_record" "pslab-record-NS" {
  for_each =  var.pscloud_domain_records_NS

  zone_id = aws_route53_zone.pscloud-primary.zone_id
  name = each.key
  type = "NS"
  ttl = 300
  records = each.value

}

resource "aws_route53_record" "pslab-record-MX" {
  for_each =  var.pscloud_domain_records_MX

  zone_id = aws_route53_zone.pscloud-primary.zone_id
  name = each.key
  type = "MX"
  ttl = 300
  records = each.value

}
