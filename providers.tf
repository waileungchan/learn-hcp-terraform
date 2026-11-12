terraform {
  required_version = ">= 1.12.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.73.0"
    }
  }

  cloud {
    organization = "TA-004-HCP"
    workspaces {
      name = "workspace-demo-ta-004"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
