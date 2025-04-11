provider "aws" {
  region                      = "eu-south-2"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    s3 = "http://localhost:4566/"
  }
}

resource "aws_s3_bucket" "bucket_de_prueba" {
  bucket        = "bucket-validate-action"
  force_destroy = true
}
