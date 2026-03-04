provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name : "dual-stack"
    }
  }
}

# # FIXME: Is a depends_on statement needed anywhere?
# resource "aws_internet_gateway" "igw" {
#   vpc_id = dual_stack_vpc.id

# }

# # TODO:
# resource "aws_route_table" "rt" {
#   vpc_id = dual_stack_vpc.id

# }

# # TODO:
# resource "aws_egress_only_internet_gateway" "eigw" {
#   vpc_id = dual_stack_vpc.id
# }

# # TODO:
# resource "aws_nat_gateway" "natgw" {
#   subnet_id = private_ipv4_subnet.id
# }

# # TODO:
# resource "aws_subnet" "private_ipv4_subnet" {
#   vpc_id = dual_stack_vpc.id

#   assign_ipv6_address_on_creation = true
# }

# TODO: Which variable should the user be able to customize
# TODO: What should I output other than the VPC ID?
resource "aws_vpc" "dual_stack_vpc" {
  cidr_block                       = var.ipv4_cidr_block
  assign_generated_ipv6_cidr_block = true
  instance_tenancy                 = "default" # allows shared tenancy with instances from other AWS accounts
  enable_dns_hostnames             = true      # IPv6 DNS hostnames are not supported
}