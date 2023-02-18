resource "aws_s3_bucket" "Jayant" {
  bucket = "terraform-sample-s3bucket00111"
  acl    = "public-read"

  tags = {
    Name        = "awsclass-aug2022"
    Environment = "dev"
  }
} 