provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name: "dual-stack"
    }
  }
}

# FIXME: Is a depends_on statement needed anywhere?
resource "aws_internet_gateway" "igw" {
  vpc_id = dual_stack_vpc.id

}

# TODO:
resource "aws_route_table" "rt" {
  vpc_id = dual_stack_vpc.id

}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

}

module "dual_stack_vpc" { // FIXME: Should this be declared as a resource?
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"

  name = "dual-stack-vpc"
  cidr = var.cidr_block # FIXME: Should this be a variable? How do people change variables (terraform.tfvars?)

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_dns_hostnames = true
  enable_dns_support = true
}