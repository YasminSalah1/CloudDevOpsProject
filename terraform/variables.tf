variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "az" {
  default = "us-east-1a"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316" # Ubuntu 22.04 LTS
}

variable "instance_type" {
  default = "t3.medium"
}

variable "key_name" {
  default = "project"
}

