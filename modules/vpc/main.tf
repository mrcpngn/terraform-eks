//
// Resource for the VPC module
//

resource "aws_vpc" "this" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = var.enable_dns_hostnames
    enable_dns_support = var.enable_dns_support
    tags = merge(
        {
            Name = "${local.name_prefix}-vpc",
            Resource = "vpc"
        },
        var.tags
    )

    lifecycle {
      prevent_destroy = false
    }
}