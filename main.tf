provider "aws"{
    region = "us-east-1"

}

resource "aws_s3_bucket" "nagaraju" {
  
  bucket = "my-bucket-02-03-2023"
  
  tags = {
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.nagaraju.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "directory" {
  bucket = "my-bucket-02-03-2023"
  key    = "/base_s3_key/"
  content = "/"
}

# resource "null_resource" "multiple" {
#   provisioner "local-exec" {
#     command = "aws s3 sync C:\\Users\\Lenovo\\Documents\\terraform\\s3 s3://my-bucket-02-03-2023"
#   }
# }