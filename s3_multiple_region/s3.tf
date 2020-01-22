resource "aws_s3_bucket" "b" { 
  bucket = "my-tf-test-bucket-karimi" 
  acl    = "private"
  region = "us-east-1"

  tags = { 
    Name        = "My bucket" 
    Environment = "Dev"
  }

  versioning { 
    enabled = true 
  } 
}
resource "aws_s3_bucket" "b" { 
  bucket = "my-tf-test-bucket-karimi" 
  acl    = "private"
  region = "us-east-2"

  tags = { 
    Name        = "My bucket" 
    Environment = "Qa" 
  } 

  versioning { 
    enabled = true 
  } 
}

resource "aws_s3_bucket" "b" { 
  bucket = "my-tf-test-bucket-karimi" 
  acl    = "private"
  region = "us-west-1"

  tags = { 
    Name        = "My bucket" 
    Environment = "stage" 
  } 

  versioning { 
    enabled = true 
  } 
}

resource "aws_s3_bucket" "b" { 
  bucket = "my-tf-test-bucket-karimi" 
  acl    = "private"
  region = "eu-west-1"

  tags = { 
    Name        = "My bucket" 
    Environment = "prod" 
  } 

  versioning { 
    enabled = true 
  } 
}