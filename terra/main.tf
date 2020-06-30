provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "/c/Users/sophi/.aws/credentials"
}

module "aws_vpc" {
  source = "./VPC"
}

module "aws_webserver_sg" {
  source = "./SG"
  name = "WebServerSG"
  vpc_id = module.aws_vpc.vpc_id
}

module "webserver_node" {
  source = "./EC2"
  subnet_id = module.aws_vpc.publicsubnet_id
  vpc_security_group_ids = module.aws_webserver_sg.aws_wsg_id
  associate_public_ip_address = true
}

module "lambda_api" {
  source = "./lambda"
}

