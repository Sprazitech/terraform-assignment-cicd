terraform {
  backend "s3" {
    encrypt = true
    bucket  = "tobi-bucket243-lockfile"
    key     = "backend.tf"
    region  = "us-east-1"
    dynamodb_table = "terraformlocks"
  }
}