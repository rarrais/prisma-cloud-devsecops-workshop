provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "032e28ee-063f-4f25-a55a-f85b53daccc1"
    git_commit           = "aaedb8a21b035d25a9b4565e041d73b8f588828e"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-11-13 17:20:03"
    git_last_modified_by = "2287246+rarrais@users.noreply.github.com"
    git_modifiers        = "2287246+rarrais"
    git_org              = "rarrais"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
