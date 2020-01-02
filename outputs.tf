output "dns_servers" {
  value       = aws_route53_zone.pscloud-primary.*.name_servers
}

output "domain_name" {
  value       = aws_route53_zone.pscloud-primary.name
}
