variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "publicsubnet_cidr" {
  description = "CIDR block for Public Subnet A"
  default     = "10.0.1.0/24"
}