resource "aws_s3_bucket" "tf_state" {
  bucket = var.s3_tf_state_name
}

resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id
  versioning_configuration {
    status = "Enabled"
  }
}