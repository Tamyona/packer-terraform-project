# Data source to find the AMI by name or tag
data "aws_ami" "wordpress" {
  most_recent = true
  owners      = ["self"]  # Use "self" if the AMI was created in your AWS account

  # Filters to match the AMI by name or any other tags you might use
  filter {
    name   = "name"
    values = ["wordpress-ami"]  # Replace with the prefix of your Packer AMI name
  }
} 


resource "aws_instance" "main" {
  ami           = data.aws_ami.wordpress.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.main.id
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = var.instance_name
  }

  volume_tags = {
    backup = "True"
  }
}