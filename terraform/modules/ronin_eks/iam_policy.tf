resource "aws_iam_policy" "allow_all" {
  name = "AllowAll"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action   = "*",
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}
