
output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "bucket_policy_id" {
  value = module.s3_policy.policy_id
}


output "cloudfront_arn" {
  value = module.cloudfront.cloudfront_arn
}

output "bucket_name" {
  value = module.s3_static.bucket_name
}

output "website_endpoint" {
  value = module.s3_static.website_endpoint
}


#cloudfront

output "cloudfront_domain" {
  description = "The CloudFront distribution domain name"
  value       = module.cloudfront.cloudfront_domain
}