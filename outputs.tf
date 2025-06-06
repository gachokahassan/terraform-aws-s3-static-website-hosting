# Output the website endpoint
output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.website.website_endpoint
}

# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.website.id
}