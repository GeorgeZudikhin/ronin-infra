variable "s3_tf_state_name" {
  description = "Name of the S3 bucket where tf remote state is stored"
  type        = string
  default     = "ronin-infra-tf-state"
}

variable "dynamo_tf_state_name" {
  description = "Name of the DynamoDB that stores the lock on the tf state"
  type        = string
  default     = "tf-state-lock-dynamo"
}