resource "aws_s3_bucket" "cicd" {
 bucket =  "${var.RESOURCES_PREFIX}-${var.cicd-bucket24682}"
  force_destroy = true

  tags = {
    Name        = "cicd"
    ENV = var.ENV
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.cicd.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.cicd.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.cicd.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}




###======================================================
## zoe bucket 
##======================================================

