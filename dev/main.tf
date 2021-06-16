provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
module "iam_users" {
  source = "../modules/iam/users"
}
module "iam_group" {
  source = "../modules/iam/groups"
}