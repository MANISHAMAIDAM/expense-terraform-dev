terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
  backend "s3" {
    bucket = "manisha-remote-state"
    key    = "expense-dev-db"
    region = "us-east-1"
    dynamodb_table = "manisha-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}