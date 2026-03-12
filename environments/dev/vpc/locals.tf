//
// Define local variables for the development environment
//

locals {

  global_tags = {
    ManagedBy = "terraform"
  }

  env_tags = {
    Project     = "mrcpngn"
    Environment = "dev"
  }

  service_tags = {
    Class   = "research"
    Purpose = "demo"
  }

  tags = merge(
    local.global_tags,
    local.env_tags,
    local.service_tags
  )

}