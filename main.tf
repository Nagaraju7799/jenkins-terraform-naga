provider "aws" {
    region = "us-east-1"
    access_key = "AKIA4TEE32MAZ5BCTYVH"
    secret_key = "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"
}
resource "aws_instance" "server" {
  ami           = "ami-0263e4deb427da90e"
  instance_type = "t2.micro"
  subnet_id     = "subnet-07344315c134e1989"
  security_groups = ["sg-08725003435509389"]
  key_name = aws_key_pair.key.id

  tags = {
    Name = "terraform"
  } 
}

resource "aws_key_pair" "key" {
  key_name   = "sample"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDswsBA6NgqLq4aLMrGFbBduyIzi+5EjQQ8q2v60vAdzKZ5h5ypmiPbaFiWxpbs0FjfrLYoPrzpKH1zJko1OAvkUJmiqdcIX6PsE2F9IIka4FLcMzcmiFqI+b/pwMLqMjekjUPnXvCu5VAZR3V5DlJwxwvJfRqYPotMd/lo9Y5RzhC3DGupiHvkakzVxS4XTzW+7kdEeBCyqBBooByOSr2a/zd0HDdWYCYXbdWXe6dyxJjGPAemMwEHFOCKcok6xkO9oYAsJ8oi/ffFW/l0rPgy2Vu79SUtyeGb0sLgg5Day7Mb/x0PL4LQWrpoAVJ9UWq6G5IqaFLgLcYX80axKVsquDjklZUXhrTUG6ev3ICLmbMOziNH6cjHY9sY32UGKsdTsJHAeB971Z6NI7/CnDVnHb7ofRZv1WT/LJBNmeRMro2jImPAb67hV11yEOxu+kY0O2Te4h4YA+5JaBLDQgPcI3m/9avRhQbCImhwyysWMmo8FnW1ZE0UBvUVYC8sUuE= lenovo@DESKTOP-9VFV040"
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


