terraform {
  backend "s3" {
    bucket = "terraformbucketjay1"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    access_key = "AKIAUBHXC32QK4SJWBHR"
    secret_key = "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"
  }
}
