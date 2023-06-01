
#aws instance
resource "aws_instance" "demo" {
  ami                         = "ami-05f998315cca9bfe3"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.dev-subnet.id
  key_name                    = "demo"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  tags = {
    Name = "demo"
  }
}
