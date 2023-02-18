resource "aws_s3_bucket" "Jayant" {
  bucket = "terraform-sample-s3bucket00111"
  aws_s3_bucket_acl    = "public-read"

  tags = {
    Name        = "awsclass-aug2022"
    Environment = "dev"
  }
} 