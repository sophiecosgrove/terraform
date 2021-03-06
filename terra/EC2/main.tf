resource "aws_instance" "EC2Instance" {
  ami                         = var.ami
  instance_type               = var.type
  key_name                    = var.key_name
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.vpc_security_group_ids]
  associate_public_ip_address = var.associate_public_ip_address
}