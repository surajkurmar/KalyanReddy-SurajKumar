terraform {
#   required_version = "1.4.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.3.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "SurajEc2" {
  ami           = "ami-057752b3f1d6c4d6c"  
  instance_type = "t2.micro"  

  tags = {
    Name = "Suraj-instance"  
  }
}