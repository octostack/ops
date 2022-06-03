output "domain_nameservers" {
  value = data.cloudflare_zone.domain.name_servers[*]
}
