resource "aws_s3_bucket" "example" {
  bucket = "nawscicd3bucket"

  tags = {
    Name        = "Novant"
    Environment = var.environment
  }
}
