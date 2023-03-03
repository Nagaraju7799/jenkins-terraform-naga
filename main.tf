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
  key_name = "nagaraju"

  tags = {
    Name = "terraform"
  } 
}

