resource "aws_subnet" "public_subnet" {
  count                   = length(var.public_subnet_cidr_blocks)
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public_subnet_cidr_blocks[count.index]
  availability_zone       = element(["us-east-1a", "us-east-1b", "us-east-1c"], count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.subnet_tags["public-subnet-${count.index}"]}"
  }
}

resource "aws_subnet" "private_subnet" {
  count                   = length(var.private_subnet_cidr_blocks)
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.private_subnet_cidr_blocks[count.index]
  availability_zone       = element(["us-east-1a", "us-east-1b", "us-east-1c"], count.index)
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.subnet_tags["private-subnet-${count.index}"]}"
  }
}
