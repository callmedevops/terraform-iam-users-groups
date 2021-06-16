output "user_name_admin" {
  description = "IAM user admin"
  value       =  aws_iam_user.admin.name
}
