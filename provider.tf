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
  access_key = "put your aws key"
  secret_key = "put your secret key here"
}

