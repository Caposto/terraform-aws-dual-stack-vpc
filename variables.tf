variable "region" {
  description = "Region for dual stack VPC"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "CIDR block size for VPC"
  type        = string
  default     = "10.10.0.0/24"
}