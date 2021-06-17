
resource "aws_iam_group" "group_name" {
  name = "group_name"
}

resource "aws_iam_policy" "group_name_policy" {
  name        = "group_name_policy"
  description = "group_name_policy"
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
        }
    ]
})
}

resource "aws_iam_group_policy_attachment" "group_name_policy_attachment" {
  group      = aws_iam_group.group_name.name
  policy_arn = aws_iam_policy.group_name_policy.arn
}

resource "aws_iam_group_membership" "group_name_team" {
  name = "tf-testing-group-membership"
  users = [var.admin_user,]
  group = aws_iam_group.group_name.name
}
variable "admin_user"{}
