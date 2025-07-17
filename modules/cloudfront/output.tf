output "cloudfront_arn" {
  value = aws_cloudfront_distribution.cdn.arn
}


output "cloudfront_domain" {
  value       = aws_cloudfront_distribution.cdn.domain_name
  description = "CloudFront distribution domain"
}
