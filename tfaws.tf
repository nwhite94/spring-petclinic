terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "terraform2" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"
}

