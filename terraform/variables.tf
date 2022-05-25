variable "domain" {
  description = "Domain to be affected"
  type        = string
  default     = "octostack.io"
}

variable "gh_pages_ipv4" {
  description = "IPv4 records for GitHub pages"
  type        = list(string)
  default     = ["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"]
}

variable "gh_pages_ipv6" {
  description = "IPv6 records for GitHub pages"
  type        = list(string)
  default     = ["2606:50c0:8000::153", "2606:50c0:8001::153", "2606:50c0:8002::153", "2606:50c0:8003::153"]
}

variable "gh_username" {
  description = "Your github username (or org name). Required if CNAMEs are specified."
  type        = string
  default     = ""
}

variable "gh_pages_cnames" {
  description = "CNAMEs for your github pages. This can span multiple repositories."
  type        = set(string)
  default     = []
}

variable "heroku_api_cname" {
  description = "API CNAME for Heroku"
  type        = string
  default     = "rugged-pig-xis6taoz2189csztz97g5pe8.herokudns.com"
}
