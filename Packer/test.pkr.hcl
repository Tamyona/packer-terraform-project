# we are using AWS
packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

# configures a specific builder plugin, which is then invoked by a build block. 
source "amazon-ebs" "demo" {
    ami_name = "demo_app"
    instance_type = "t2.micro"
    region = "us-east-2"
    source_ami_filter {
        filters = {
            name                = "amazon/al2023-ami-2023.6.20250203.1-kernel-6.1-x86_64""
            virtualization-type = "hvm"
        }
        most_recent = true
        owners      = ["137112412989"]
    }
    ssh_username = "ec2-user"
}

# what Packer should do with the EC2 instance after it launches
build {
    sources = [
        "source.amazon-ebs.demo"
    ]
}