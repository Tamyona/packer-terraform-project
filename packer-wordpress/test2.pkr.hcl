# we are using AWS
packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "region" {
  default = "us-east-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_name" {
  default = "wordpress-ami"
}

source "amazon-ebs" "wordpress" {
  ami_name      = var.ami_name
  instance_type = var.instance_type
  region = var.region
  ssh_username  = "ec2-user"
  source_ami_filter {
    filters = {
      name                = "al2023-ami-2023.6.20250203.1-kernel-6.1-x86_64" # Amazon Linux 2 AMIs
      virtualization-type = "hvm"
    }
    owners      = ["137112412989"]
    most_recent = true
  }

  tags = {
    Name = "WordPress-AMI"
  }
}

build {
  sources = [
    "source.amazon-ebs.wordpress"
  ]

  provisioner "shell" {
    script = "wordpress.sh"
  }
}