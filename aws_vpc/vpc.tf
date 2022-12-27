provider "aws" {
  region  = "us-west-2"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "terraform-101"
  }
}

resource "aws_subnet" "first_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "us-west-2a"

  tags = {
    Name = "101subnet-1"
  }
}


resource "aws_subnet" "second_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-west-2b"

  tags = {
    Name = "101subnet-2"
  }
}