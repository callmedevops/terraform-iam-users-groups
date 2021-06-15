provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
module "iam_users_and_group" {
  source = "../modules/"
}