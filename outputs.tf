output "s3_bucket_full_details" {
    value = aws_s3_bucket.bucket-1
}

output "iam_user_full_details" {
  value = aws_iam_user.my_iam_user
}