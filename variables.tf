variable "vpc_tags" {
  default     = {}
  description = "VPC tags"
}

variable "vpc_name" {
  type        = string
  default     = ""
  description = "VPC name"
}

variable "cidr_block" {
  type        = string
  description = "CIDR for the VPC"
}

variable "instance_tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable DNS support in the VPC"
  default     = true
}

variable "enable_classiclink" {
  type        = bool
  description = "A boolean flag to enable/disable ClassicLink for the VPC"
  default     = false
}

variable "enable_classiclink_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC"
  default     = false
}

variable "enable_internet_gateway" {
  type        = bool
  description = "A boolean flag to enable/disable Internet Gateway creation"
  default     = true
}

variable "assign_generated_ipv6_cidr_block" {
  type        = bool
  description = "Whether to assign generated ipv6 cidr block to the VPC"
  default     = false
}

variable "additional_cidr_blocks" {
  type        = list(string)
  description = "A list of additional IPv4 CIDR blocks to associate with the VPC"
  default     = null
}
