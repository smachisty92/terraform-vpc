resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.ENV}-igw"
  }
}

resource "aws_eip" "public" {

}

resource "aws_nat_gateway" "e" {
  allocation_id =
  subnet_id =
  tags = {
    Name = "NAT-gw"
  }
  depends_on = []
}