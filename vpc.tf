#--------------------------------------------------------------
# This module creates all resources necessary for a VPC
#--------------------------------------------------------------

local {
  additional_cidr_blocks_defined = var.additional_cidr_blocks != null ? true : false
  additional_cidr_blocks         = local.additional_cidr_blocks_defined ? var.additional_cidr_blocks : []
}

resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr_block
  enable_dns_support               = var.enable_dns_support
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  tags = merge(
    {
      "Name" = var.vpc_name
    },
    var.vpc_tags,
  )
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_internet_gateway" "default" {
  count  = var.enable_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    {
      "Name" = var.vpc_name
    },
    var.vpc_tags,
  )
}

resource "aws_vpc_ipv4_cidr_block_association" "default" {
  for_each   = toset(local.additional_cidr_blocks)
  vpc_id     = join("", aws_vpc.default.*.id)
  cidr_block = each.key
}
