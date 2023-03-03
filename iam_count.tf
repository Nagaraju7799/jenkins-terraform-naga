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
resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

variable "user_names" {
    description = "Iam Users"
    type        = list(string)
    default     = [ "user1","user2","user3" ]  
}

