resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "learn-hcp-terraform-vpc"
    Environment = "test"
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.subnets_az

  tags = {
    Name        = "learn-hcp-terraform-public-subnet"
    Environment = "test"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.subnets_az

  tags = {
    Name        = "learn-hcp-terraform-private-subnet"
    Environment = "test"
  }
}
