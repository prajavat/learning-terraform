# module "vpc" {
#   source            = "./modules/vpc"
#   name              = "${var.application}-${var.env}-${var.region}"
#   cidr_block        = var.cidr_block
#   public_subnets    = var.public_subnets
#   private_subnets   = var.private_subnets
#   availability_zones = var.availability_zones

#   tags = {
#     application = var.application
#     env         = var.env
#     created     = "Created by terraform"
#   }

#   private_subnet_tags = {
#     subnet_type = "private"
#   }
#   public_subnet_tags = {
#     subnet_type = "public"
#   }
# }
