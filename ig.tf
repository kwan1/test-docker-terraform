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
