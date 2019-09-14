module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "event-vpc"
  cidr = "10.0.0.0/16"

  azs                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets     = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24", "10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24","10.1.7.0/24","10.1.8.0/24","10.1.9.0/24","10.1.10.0/24","10.1.11.0/24","10.1.12.0/24"]
  private_subnet_name = ["rest-az1", "rest-az2", "rest-az3", "mq-az1", "mq-az2", "mq-az3", "db-az1", "db-az2", "db-az3", "worker-az1", "worker-az2", "worker-az3" ]
  public_subnets      = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]
  public_subnet_name  = ["public_az1", "public_az2", "publi_az3"]

  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}