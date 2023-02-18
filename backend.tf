terraform {
  backend "s3" {
    bucket = "terraformbucketjay1"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
