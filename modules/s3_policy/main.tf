resource "aws_s3_bucket_policy" "secure_policy" {
  bucket = "${var.RESOURCES_PREFIX}-${var.website-bucket1357911}"


  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "cloudfront.amazonaws.com"
        },
        Action = "s3:GetObject",
        Resource = "arn:aws:s3:::${var.website-bucket1357911}/*",
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = var.cloudfront_distribution_arn
          }
        }
      }
    ]
  })
}
