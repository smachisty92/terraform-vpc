resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.ENV}-igw"
  }
}

resource "aws_eip" "public" {
vpc = true
}

resource "aws_nat_gateway" "e" {
  allocation_id =aws_eip.public
  subnet_id =aws_subnet.public-subnet.*.id[0]
  tags = {
    Name = "NAT-gw"
  }
  depends_on = [aws_internet_gateway.gw]
}