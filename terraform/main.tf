provider "aws" {
  region = var.aws_region
}

module "network" {
  source      = "./modules/network"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  az          = var.az
}

module "server" {
  source        = "./modules/server"
  ami           = var.ami
  instance_type = var.instance_type
  vpc_id        = module.network.vpc_id
  subnet_id     = module.network.subnet_id
  key_name      = var.key_name
}

