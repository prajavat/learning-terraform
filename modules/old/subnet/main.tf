resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  availability_zone = var.availability_zone
  map_public_ip_on_launch = var.public_ip_enable

  tags = merge(
    {
      "Name" = format("%s", var.subnet_name)
    },
    var.tags,
  )
}