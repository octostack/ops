variable "domain" {
  description = "Domain to be affected"
  default     = "octostack.io"
  type        = string
}

variable "gh_pages_ipv4" {
  description = "IPv4 records for GitHub pages"
  default     = ["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"]
  type        = list(string)
}

variable "gh_pages_ipv6" {
  description = "IPv6 records for GitHub pages"
  default     = ["2606:50c0:8000::153", "2606:50c0:8001::153", "2606:50c0:8002::153", "2606:50c0:8003::153"]
  type        = list(string)
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
