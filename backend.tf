terraform {
  backend "s3" {
    bucket = "fast-food-tf"
    key    = "fast-food/terraform.tfstate"
    region = "us-east-1"
  }
}