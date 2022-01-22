variable "region" {
  type        = string
}

variable "cidr_block" {
  type        = string
  description = "VPC CIDR Block"
}

variable "application" {
  type        = string
  description = "description"
}

variable "env" {
  type        = string
  description = "description"
}

variable "public_subnets" {
  type        = list
  description = "description"
}

variable "private_subnets" {
  type        = list
  description = "description"
}

variable "availability_zones" {
  type        = list
  description = "description"
}

