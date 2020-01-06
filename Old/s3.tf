resource "aws_s3_bucket" "b" { 
  bucket = "my-tf-test-bucket-karimi" 
  acl    = "private" 

  tags = { 
    Name        = "My bucket" 
    Environment = "Dev" 
  } 

  versioning { 
    enabled = true 
  } 
} 