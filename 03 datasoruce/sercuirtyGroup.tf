resource "aws_security_group" "VPC_ssh" {
    name        = "vpc-ssh"
    description = "Dec VPC ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow port no of ssh-80"
    from_port        = 22
    to_port          = 22
    protocol         = "ssh"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "VPC-SSH"
  }
}


resource "aws_security_group" "VPC_Web" {
  name        = "vpc-Web"
  description = "Dec VPC Web"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow port no of ssh-80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "VPC-web"
  }
}