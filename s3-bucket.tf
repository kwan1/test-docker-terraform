# resource "aws_s3_bucket" "dog-cat-fish-ap-southeast-2" {
#   bucket = "dog-cat-fish-ap-southeast-2"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
#   force_destroy = true
# }

# resource "aws_s3_bucket_website_configuration" "s3_bucket_website" {
#   bucket = aws_s3_bucket.s3_bucket_website.bucket

#   index_document {
#     suffix = "index.html"
#   }

#   error_document {
#     key = "error.html"
#   }
# }

# resource "aws_s3_bucket_policy" "allow_access" {
#   bucket = aws_s3_bucket.my-s3-bucket.id
#   policy = data.aws_iam_policy_document.allow_access.json
# }

# data "aws_iam_policy_document" "allow_access" {
#   policy_id = "PolicyForCloudFrontPrivateContent"
#   statement {
#     sid       = "AllowCloudFrontServicePrincipal"
#     actions   = ["s3:GetObject"]
#     resources = ["${aws_s3_bucket.my-s3-bucket.arn}/*"]

#     principals {
#       type        = "*"
#       identifiers = ["*"]
#     }
#     condition {
#       test     = "StringLike"
#       variable = "aws:Referer"
#       values   = [random_password.custom_header.result]
#     }
#   }
# }

# resource "aws_s3_bucket_acl" "my-bucket" {
#   bucket = aws_s3_bucket.my-bucket.id
#   acl    = "private"
# }
