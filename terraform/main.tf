# S3 bucket
module "s3" {
  source = "./s3"

  # This is the only globally significant id
  # Change the bucket name to deploy this yourself
  s3_bucket_name = "angular-bucket-9319230doq12021"

  cf_oai_iam_arn = module.cloudfront.cf_oai_iam_arn
  cf_id          = module.cloudfront.cf_id
}

module "cloudfront" {
  source = "./cloudfront"

  bucket_regional_domain_name = module.s3.bucket_regional_domain_name
}

output "cf_domain_name" {
  description = "The domain name corresponding to the distribution. For example: d604721fxaaqy9.cloudfront.net"
  value       = module.cloudfront.cf_domain_name
}

# terraform {
#   cloud {
#     organization = "justForPlay"

#     workspaces {
#       name = "aws-angular-github"
#     }
#   }
# }