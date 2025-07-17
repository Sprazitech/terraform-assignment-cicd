variable "s3_bucket_name" {
  description = "The name of the S3 bucket being used as the origin"
  type        = string
}

variable "default_root_object" {
  description = "Default object to serve from the CloudFront distribution"
  type        = string
  default     = "index.html"
}

variable "price_class" {
  description = "The price class for the CloudFront distribution"
  type        = string
  default     = "PriceClass_All" # You can change to _200 or _All if needed
}

variable "RESOURCES_PREFIX" {
    
}