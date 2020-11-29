resource "aws_route53_zone" "pscloud-primary" {
  name                    = var.pscloud_domain_name

  tags = {
    Name                  = "${var.pscloud_company}_r53_zone_${var.pscloud_env}"
  }
}

resource "aws_route53_record" "pscloud-record-A" {
  for_each = var.pscloud_domain_records_A

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "A"
  ttl                     = each.value.ttl
  records                 = each.value.val

}

resource "aws_route53_record" "pscloud-record-ALIAS" {
  for_each = var.pscloud_domain_records_ALIAS

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "A"

  alias {
    name                   = each.value.val
    zone_id                = each.value.zoneid
    evaluate_target_health = false
  }

}

resource "aws_route53_record" "pscloud-record-NS" {
  for_each = var.pscloud_domain_records_NS

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "NS"
  ttl                     = each.value.ttl
  records                 = each.value.val

}

resource "aws_route53_record" "pscloud-record-MX" {
  for_each = var.pscloud_domain_records_MX

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "MX"
  ttl                     = each.value.ttl
  records                 = each.value.val

}

resource "aws_route53_record" "pscloud-record-SRV" {
  for_each = var.pscloud_domain_records_SRV

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "SRV"
  ttl                     = each.value.ttl
  records                 = each.value.val

}

resource "aws_route53_record" "pscloud-record-TXT" {
  for_each = var.pscloud_domain_records_TXT

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "TXT"
  ttl                     = each.value.ttl
  records                 = each.value.val

}

resource "aws_route53_record" "pscloud-record-CNAME" {
  for_each = var.pscloud_domain_records_CNAME

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = each.value.name
  type                    = "CNAME"
  ttl                     = each.value.ttl
  records                 = each.value.val

}