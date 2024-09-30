terraform {
  backend "s3" {
    bucket = "fast-food-terraform"
    key = "fast-food/terraform.tfstate"
    region = "us-east-1"
  }
}