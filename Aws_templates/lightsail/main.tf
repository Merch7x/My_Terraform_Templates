terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "Merch7x"

    workspaces {
      name = "Lightsail-Dev"
    }
  }
}


