terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.17"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "***********"
  secret_key = "***********"
}

