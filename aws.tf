 provider "aws" {
     region = "us-east-1"
  
 }

resource "aws_instance" "sample" {
    ami  = "ami-0263e4deb427da90e"
    instance_type = "t2.micro"

    tags = {
        name = "Terraform-EC2"
    }
}
resource "aws_iam_user" "user1" {
  name = "user1"
}

resource "aws_iam_user" "user2" {
  name = "user2"
}

resource "aws_iam_user" "user3" {
  name = "user3"
}







