resource "aws_s3_bucket" "main" {
  bucket = "ryan-terraform-101"

  tags = {
    Name = "ryan-terraform-101"
  }
}