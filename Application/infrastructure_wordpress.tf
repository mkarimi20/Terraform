module "wordpress" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = var.az
  public_subnets  = var.pub-cidr
  private_subnets = var.priv-cidr
  
  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  tags = {
    Terraform = var.terraform
    Environment = var.environment
  }
}