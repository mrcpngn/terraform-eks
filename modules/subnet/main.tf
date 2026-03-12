//
// Subnet module for creating AWS subnets
//

resource "aws_subnet" "this" {
  count                   = length(var.cidr_block)
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block[count.index]
  availability_zone       = format("%s%s", data.aws_availability_zones.available.names[count.index % length(data.aws_availability_zones.available.names)], var.azs[count.index % length(var.azs)])
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    {
      Name     = "${local.name_prefix}-${var.map_public_ip_on_launch ? "public" : "private"}-subnet-${count.index + 1}",
      Resource = "subnet"
    },
    var.tags
  )

  lifecycle {
    prevent_destroy = false
  }
}