variable "vpc_id" {
  type        = string
  description = "description"
}

variable "cidr_block" {
  type        = string
  description = "description"
}

variable "availability_zone" {
  type        = string
  description = "description"
}

variable "public_ip_enable" {
  type        = string
  default     = false
  description = "description"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type  = map
  default     = {}
}

variable "subnet_name" {
  type        = string
  description = "description"
}


