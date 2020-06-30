variable "ami" {
  default = "ami-032598fcc7e9d1c7a"
}

variable "type" {
  default = "t2.nano"
}

variable "key_name" {
  default = "keypair"
}

variable "subnet_id" {
  default = "publicsubnet.id"
}

variable "vpc_security_group_ids" {
  default = ""
}

variable "associate_public_ip_address" {
  default = true 
}