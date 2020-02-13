resource "aws_route53_zone" "pscloud-primary" {
  name                    = var.pscloud_domain_name

  tags = {
    Name                  = "${var.pscloud_company}_r53_zone_${var.pscloud_env}"
  }
}

resource "aws_route53_record" "pscloud-record-A" {
  count                   = length(var.pscloud_domain_records_A)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_A[count.index].name
  type                    = "A"
  ttl                     = var.pscloud_domain_records_A[count.index].ttl
  records                 = var.pscloud_domain_records_A[count.index].val

}

resource "aws_route53_record" "pscloud-record-ALIAS" {
  count                 = length(var.pscloud_domain_records_ALIAS)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_ALIAS[count.index].name
  type                    = "A"

  alias {
    name                   = var.pscloud_domain_records_ALIAS[count.index].val
    zone_id                = var.pscloud_domain_records_ALIAS[count.index].zoneid
    evaluate_target_health = false
  }

}

resource "aws_route53_record" "pscloud-record-NS" {
  count                   = length(var.pscloud_domain_records_NS)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_NS[count.index].name
  type                    = "NS"
  ttl                     = var.pscloud_domain_records_NS[count.index].ttl
  records                 = var.pscloud_domain_records_NS[count.index].val

}

resource "aws_route53_record" "pscloud-record-MX" {
  count                   = length(var.pscloud_domain_records_MX)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_MX[count.index].name
  type                    = "MX"
  ttl                     = var.pscloud_domain_records_MX[count.index].ttl
  records                 = var.pscloud_domain_records_MX[count.index].val

}

resource "aws_route53_record" "pscloud-record-SRV" {
  count                   = length(var.pscloud_domain_records_SRV)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_SRV[count.index].name
  type                    = "SRV"
  ttl                     = var.pscloud_domain_records_SRV[count.index].ttl
  records                 = var.pscloud_domain_records_SRV[count.index].val

}

resource "aws_route53_record" "pscloud-record-TXT" {
  count                   = length(var.pscloud_domain_records_TXT)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_TXT[count.index].name
  type                    = "TXT"
  ttl                     = var.pscloud_domain_records_TXT[count.index].ttl
  records                 = var.pscloud_domain_records_TXT[count.index].val

}

resource "aws_route53_record" "pscloud-record-CNAME" {
  count                   = length(var.pscloud_domain_records_CNAME)

  zone_id                 = aws_route53_zone.pscloud-primary.zone_id
  name                    = var.pscloud_domain_records_CNAME[count.index].name
  type                    = "CNAME"
  ttl                     = var.pscloud_domain_records_CNAME[count.index].ttl
  records                 = var.pscloud_domain_records_CNAME[count.index].val

}