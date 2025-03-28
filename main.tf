terraform {
  required_version = "1.11.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = "trial"
  region  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-071226ecf16aa7d96"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
