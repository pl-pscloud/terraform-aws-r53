output "dns_servers" {
  value       = aws_route53_zone.pscloud-primary.*.name_servers
  description = "List of DNS"
}
