# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    name = "fullstack-project"
  }
}

resource "aws_subnet" "pub-subnet-A" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="pub-subnet-A"
    }
  
}

resource "aws_subnet" "pub-subnet-B" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="pub-subnet-B"
    }
}

resource "aws_subnet" "PVT-frontend-A" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="PVT-frontend-A"
    }
}

resource "aws_subnet" "PVT-frontend-B" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="PVT-frontend-B"
    }
}

resource "aws_subnet" "PVT-backend-A" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="backend-A"
    }
}

resource "aws_subnet" "PVT-backend-B" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="PVT-backend-B"
    }
}

resource "aws_subnet" "RDS-A" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.7.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="RDS-A"
    }
}

resource "aws_subnet" "RDS-B" {
    vpc_id = aws_vpc.main.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.8.0/24"
    map_public_ip_on_launch = true

    tags = {
      Name ="RDS-B"
    }
}