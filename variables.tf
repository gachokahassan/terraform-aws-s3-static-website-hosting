variable "region" {
  description = "Region to deploy resources"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

variable "website_dir" {
  description = "Path to the local directory containing website content"
  type        = string
}

