resource "aws_instance" "main" {
  ami           = var.ami_id
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