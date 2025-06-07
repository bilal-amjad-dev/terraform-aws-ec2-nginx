terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.74.0"
    }
  }
}

# Configuration options
provider "aws" {
  region     = "ap-south-1"
  access_key = "paste-your-access-key"     # 👈 paste your access key
  secret_key = "paste-your-secret-key"     # 👈 paste your secret key 
}

# EC2 Instance
resource "aws_instance" "EC2" {
  ami                    = "paste-your-ami"     # 👈 paste your ami 
  instance_type         = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2-security-group.id]

  tags = {
    Name = "EC2"
  }
}

# Security Group for SSH and HTTP Access
resource "aws_security_group" "ec2-security-group" {
  name        = "ec2-security-group" 
  description = "Allow SSH and HTTP inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "ec2-security-group"
  }
}
