module "infra_vpc" {
  source = "git::https://github.com/FlintersVN/tf_aws_vpc.git?ref=develop"

  vpc_name                         = "test.vpc"
  cidr_block                       = "10.100.0.0/16"
  assign_generated_ipv6_cidr_block = true
  additional_cidr_blocks           = ["10.99.0.0/16"]
}

output "vpc_id" {
  value = module.infra_vpc.vpc_id
}

output "vpc_cidr_block" {
  value = module.infra_vpc.vpc_cidr_block
}

output "gateway_id" {
  value = module.infra_vpc.gateway_id
}

output "ipv6_cidr_block" {
  value = module.infra_vpc.ipv6_cidr_block
}

output "additional_cidr_blocks" {
  value = module.infra_vpc.additional_cidr_blocks
}

output "zone_id" {
  value = module.infra_vpc.zone_id
}
