resource "aws_s3_bucket" "dev4"{
  bucket = "rmerceslabs-dev4-mdadmin"
  acl = "private"

  tags = {
    Name="rmerceslabs-dev4-mdadmin"
  }
}