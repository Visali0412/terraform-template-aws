resource "aws_s3_bucket" "demo_terraform_s3" {
  bucket = "demo_terraform_s3"

  tags = {
    Name = "demo_terraform_s3"
  }
}
