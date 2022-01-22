variable "cidr_block" {
  type        = string
  description = "description"
}

variable "vpc_name" {
  type        = string
  description = "description"
}

variable "instance_tenancy" {
  type        = string
  default     = "default"
  description = "description"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type  = map
  default     = {}
}

variable "enable_dns_hostnames" {
  default     = true
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
}

variable "enable_dns_support" {
  default     = false
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
}

