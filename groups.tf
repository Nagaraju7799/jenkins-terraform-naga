provider "aws" {
    region = "us-east-1"
  
}

locals {
  users       = csvdecode(file("${path.module}/group_users.csv"))
}

resource "aws_iam_group" "raptor-admin" {
      name = "raptor-admin"
}

resource "aws_iam_group" "raptor-engine" {
      name = "raptor-engine"
}

resource "aws_iam_group" "raptor-engineers" {
      name = "raptor-engineers"
}

resource "aws_iam_group_membership" "raptor-admin" {
    name = "raptor-admin"
    users = [aws_iam_user.user3.name]
    group = aws_iam_group.raptor-admin.name
    #for_each = { for user in local.users : var.user_name => user if var.group_name == "raptor-admin" }
    
}

resource "aws_iam_group_membership" "raptor-engine" {
    name = "raptor-engine"
    users = [aws_iam_user.user1.name,aws_iam_user.user2.name]
    group = aws_iam_group.raptor-engine.name
    #for_each = { for user in local.users : var.user_name => user if var.group_name == "raptor-engine" }
    
}

resource "aws_iam_group_membership" "raptor-engineers" {
    name = "raptor-engineers"
    users = [aws_iam_user.user3.name]
    group = aws_iam_group.raptor-engineers.name
    #for_each = { for user in local.users : var.user_name => user if var.group_name == "raptor-engineers" }
    
}
