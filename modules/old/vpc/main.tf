resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy
  enable_dns_support =  var.enable_dns_support
  enable_dns_hostnames  = var.enable_dns_hostnames

  tags = merge(
    {
      "Name" = format("%s", var.vpc_name)
    },
    var.tags,
  )
}