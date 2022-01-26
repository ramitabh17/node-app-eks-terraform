terraform {
    backend "s3" {
     bucket = "shepherd-ecs-app-test-bucket"
     key    = "eksstate/terraform.tfstate"
     region = "ap-south-1"
  }
}
provider "aws" {
  region = var.aws_region
  profile = var.aws_profile
}

module "eks" {
    source = "./eks"
    aws_region = var.aws_region
}