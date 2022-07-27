# Setup terraform cloud and workspace
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "visali-demo"

    workspaces {
      name = "your workspace"
    }
  }
}

# Setup terraform providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  
}

# Setup AWS provider
provider "aws" {
  region = var.aws_region
  access_key = "AWS_ACCESS_KEY_ID"
  secret_key = "AWS_SECRET_KEY"
}
