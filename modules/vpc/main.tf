### AWS VPC
resource "aws_vpc" "main" {
  count                 = var.create_vpc ? 1 : 0
  cidr_block            = var.cidr_block
  instance_tenancy      = var.instance_tenancy
  enable_dns_support    =  var.enable_dns_support
  enable_dns_hostnames  = var.enable_dns_hostnames

  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags,
  )
}

### AWS Public Subnet
resource "aws_subnet" "public" {
  count      = var.create_vpc && length(var.public_subnets) > 0 ? length(var.public_subnets) : 0
  vpc_id     = aws_vpc.main[0].id
  cidr_block = element(var.public_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    {
      "Name" = format(
        "${var.name}-${var.public_subnet_suffix}-%s",
        element(var.availability_zones, count.index),
      )
    },
    var.tags,
    var.public_subnet_tags,
  )
}

### AWS Private Subnet
resource "aws_subnet" "private" {
  count      = var.create_vpc && length(var.private_subnets) > 0 ? length(var.private_subnets) : 0
  vpc_id     = aws_vpc.main[0].id
  cidr_block = element(var.private_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = merge(
    {
      "Name" = format(
        "${var.name}-${var.private_subnet_suffix}-%s",
        element(var.availability_zones, count.index),
      )
    },
    var.tags,
    var.private_subnet_tags,
  )
}