# Getting ami ID from datasoruce 
# Getting instance type  from list vairable
# Getting Keypair from map vairable

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
  region = var.aws_region
}

resource "aws_instance" "SurajEc2" {
  count = 2
  ami           = data.aws_ami.SurajLinuxAmit.id 
  instance_type = var.instance_type[0]
  key_name = var.instance_KeyPair_map ["dev"] # KeyName come from Map vairable 
  vpc_security_group_ids = [aws_security_group.VPC_ssh.id,aws_security_group.VPC_Web.id]
    tags = {
    "Name" = "Suraj-Instance-${count.index}"  
  }
}

