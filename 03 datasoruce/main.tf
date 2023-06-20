# Creating the variable for AWS Region , Intance Type , KyeName 
#Creating the List of Secuiryt Group 
# Creating output for Publich IP & DNS 

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
  ami           = data.aws_ami.SurajLinuxAmit.id 
  instance_type = var.instance_type
  key_name = var.instance_KeyPair
  vpc_security_group_ids = [aws_security_group.VPC_ssh.id,aws_security_group.VPC_Web.id]

  tags = {
    Name = "Suraj-instance"  
  }
}

output "Public_IP" {
    value = aws_instance.SurajEc2.public_ip
  
}
output "Public_DNS" {
    value = aws_instance.SurajEc2.public_dns
  
}