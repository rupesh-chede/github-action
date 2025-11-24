resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "dev-vpc"
    }
}

resource "aws_subnet" "sub1" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "Sub-1"
    }
}

resource "aws_subnet" "sub2" {
    cidr_block = "10.0.2.0/24"
    vpc_id = aws_vpc.name.id
    tags = {
      Name = "Sub-2"
    }

}
