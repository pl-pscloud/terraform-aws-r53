output "pscloud_dns_servers" {
  value       = aws_route53_zone.pscloud-primary.*.name_servers
}

output "pscloud_domain_name" {
  value       = aws_route53_zone.pscloud-primary.name
}

output "pscloud_zone_id" {
  value = aws_route53_zone.pscloud-primary.zone_id
}