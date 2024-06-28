resource "aws_s3_bucket" "example" {
  bucket = "novents3bucket"

  tags = {
    Name        = "Novant"
    Environment = var.environment
  }
}