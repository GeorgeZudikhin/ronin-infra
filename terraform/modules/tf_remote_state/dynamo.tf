resource "aws_dynamodb_table" "tf-state-lock" {
  name         = var.dynamo_tf_state_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}