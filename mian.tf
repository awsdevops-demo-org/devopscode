terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  key_name = "oregon"
  tags = {
    Name = "Git client"
  }
}

resource "aws_instance" "db_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  key_name = "oregon"
  tags = {
    Name = "Git client"
  }
}

