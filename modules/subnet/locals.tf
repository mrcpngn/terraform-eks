//
// Local values for the VPC module
//

locals {
  name_prefix = "${lookup(var.tags, "Project", "project")}-${lookup(var.tags, "Environment", "env")}"
}