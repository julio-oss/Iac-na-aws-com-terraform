terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "sa-east-1c"
}

resource "aws_instance" "iac-terraform" {
  ami           = "ami-04473c3d3be6a927f"
  instance_type = "t2.micro"
  key_name = "rootkey.csv"

  tags = {
    Name = "iac-terraform"
  }
}


