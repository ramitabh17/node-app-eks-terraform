terraform { 
  backend "s3" {
    bucket = "shepherd-ecs-app-test-bucket"
    key    = "eksstate/terraform.tfstate"
    region = "ap-south-1"
  }
}
