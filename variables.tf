variable "region" {
  description = "Region for dual stack VPC"
  type        = string
  default     = "us-east-1"
}

variable "ipv4_cidr_block" {
  description = "IPv4CIDR block size for VPC"
  type        = string
  default     = "10.10.0.0/24"
}

# TODO: Add these variables to support toggling functionality for module:
# enable_ipv6
# enable_private_subnets
# enable_public_subnets
# enable_nat_gateway
# enable_ipv6_egress_only