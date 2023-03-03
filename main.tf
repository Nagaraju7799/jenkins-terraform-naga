provider "aws" {
    region = "us-east-1"
    access_key = "AKIA4TEE32MAZ5BCTYVH"
    secret_key = "Ow9FELZB3wuPBwhH52o5BDxVbgPS/2YzBcvlkiLo"
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

