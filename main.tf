module "ec2" {
    source = "./modules/ec2"
    instance_name = "cicd_instance"
    instance_type = "t2.micro"
    ami_id = "ami-050fd9796aa387c0d"
}


module "s3" {
    source = "./modules/s3"
    ENV = var.ENV
    cicd-bucket24682 = "s3-bucket"
    RESOURCES_PREFIX = var.RESOURCES_PREFIX
}


module "cloudfront"{
    source = "./modules/cloudfront"
    s3_bucket_name = module.s3_static.bucket_name
    default_root_object = "index.html"
    price_class = "PriceClass_All"
    RESOURCES_PREFIX = var.RESOURCES_PREFIX
}

module "s3_static" {
    source = "./modules/s3_static"
    bucket_name ="website-bucket1357911"
    RESOURCES_PREFIX = var.RESOURCES_PREFIX
}


module "s3_policy" {
    source = "./modules/s3_policy"
    website-bucket1357911 = "s3_bucket_policy"
    RESOURCES_PREFIX = var.RESOURCES_PREFIX
    cloudfront_distribution_arn = module.cloudfront.cloudfront_arn


}