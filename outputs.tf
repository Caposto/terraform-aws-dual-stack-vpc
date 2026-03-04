output "vpc_id" {
  description = "ID of dual-stack VPC."
  value       = aws_vpc.dual_stack_vpc.id
}