
provider "aws" {
  region  = "ap-southeast-2"
  profile = "development"
}

#VPC
resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev-vpc"
  }

}
#internet gateway
resource "aws_internet_gateway" "dev-igw" {
  vpc_id = aws_vpc.dev-vpc.id
}

#subnet
resource "aws_subnet" "dev-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-southeast-2a"
}

#create route table ipv4
resource "aws_route_table" "demo-route-table" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-igw.id

  }
}

#associate route table with subnet
resource "aws_route_table_association" "demo-route-table-assoc" {
  subnet_id      = aws_subnet.dev-subnet.id
  route_table_id = aws_route_table.demo-route-table.id
}

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

#security groups
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.dev-vpc.id


  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
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
    Name = "allow_ssh"
  }

}

output "demo_public_ip" {
  value = aws_instance.demo.public_ip
}
