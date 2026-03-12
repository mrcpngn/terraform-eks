module "private_subnet" {
  source                  = "../../../modules/subnet"
  vpc_id                  = module.vpc.id
  cidr_block              = ["10.0.16.0/20", "10.0.32.0/20"]
  azs                     = ["1a, 1b"]
  map_public_ip_on_launch = false
  tags                    = local.tags
}

module "public_subnet" {
  source                  = "../../../modules/subnet"
  vpc_id                  = module.vpc.id
  cidr_block              = ["10.0.48.0/20", "10.0.64.0/20"]
  azs                     = ["1a, 1b"]
  map_public_ip_on_launch = true
  tags                    = local.tags
}