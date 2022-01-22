region  = "us-east-2"
cidr_block  = "10.1.0.0/16"
application = "nif"
env         = "dev"
availability_zones = ["us-east-2a", "us-east-2b"]
public_subnets  = ["10.1.0.0/18", "10.1.64.0/18"]
private_subnets = ["10.1.128.0/19", "10.1.160.0/19"]
