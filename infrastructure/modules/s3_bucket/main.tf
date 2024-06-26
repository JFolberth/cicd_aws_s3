resource "aws_s3_bucket" "example" {
  bucket = "novent_s3_bucket"

  tags = {
    Name        = "Novant"
    Environment = var.environment
  }
}