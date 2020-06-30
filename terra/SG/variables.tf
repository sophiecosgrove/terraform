variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 80, 8080, 443]
}

variable "open-internet" {
  default = ["0.0.0.0/0"]
}

variable "outbound-port" {
  default = "0"
}

variable "name" {
  default = "SG"
}

variable "vpc_id" {
  default = "aws_vpc.VPC.id"
}