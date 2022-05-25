terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}
provider "cloudflare" {
  # email   = var.cloudflare_email   # CLOUDFLARE_EMAIL
  # api_key = var.cloudflare_api_key # CLOUDFLARE_API_KEY
}

data "cloudflare_zone" "domain" {
  name = var.domain
}

resource "cloudflare_record" "apex_a_records" {
  count   = length(var.gh_pages_ipv6)
  zone_id = data.cloudflare_zone.domain.id
  name    = "@"
  type    = "A"
  value   = var.gh_pages_ipv4[count.index]
  ttl     = 300
  proxied = false

}

resource "cloudflare_record" "apex_aaaa" {
  count   = length(var.gh_pages_ipv6)
  zone_id = data.cloudflare_zone.domain.id
  name    = "@"
  type    = "AAAA"
  value   = var.gh_pages_ipv6[count.index]
  ttl     = 300
  proxied = false

}

resource "cloudflare_record" "cnames" {
  for_each = var.gh_pages_cnames
  zone_id  = data.cloudflare_zone.domain.id
  name     = each.value
  type     = "CNAME"
  value    = "${var.gh_username}.github.io"
  ttl      = 300
  proxied  = false
}
