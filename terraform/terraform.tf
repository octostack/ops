terraform {
  cloud {
    organization = "octostack"

    workspaces {
      name = "ops"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}
