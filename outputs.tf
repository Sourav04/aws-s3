output "bucket_arn" {
  value       = local.enabled ? join("", aws_s3_bucket.default.*.arn) : ""
  description = "Bucket ARN"
}
