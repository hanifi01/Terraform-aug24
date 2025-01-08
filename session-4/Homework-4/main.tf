locals {
  azs = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "public" {
  count             = var.number_of_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
  availability_zone = element(local.azs, count.index)

  tags = {
    Name = "public-subnet002-${count.index}"
  }
}

resource "aws_subnet" "private" {
  count             = var.number_of_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + var.number_of_subnets)
  availability_zone = element(local.azs, count.index)

  tags = {
    Name = "private-subnet001-${count.index}"
  }
}


# Terraform Documentation:

# Terraform by HashiCorp

# AWS Provider Documentation:

# AWS Provider by HashiCorp

# Terraform Variables:

# Input Variables

# Terraform Resources:

# Resource Documentation

# Terraform Locals:

# Local Values

# Terraform Outputs:

# Output Values