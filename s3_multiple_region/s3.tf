resource "aws_s3_bucket" "a" { 
  bucket = "some-bucket-test-1" 
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
  bucket = "some-bucket-test-2" 
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

resource "aws_s3_bucket" "c" { 
  bucket = "some-bucket-test-3" 
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

resource "aws_s3_bucket" "d" { 
  bucket = "some-bucket-test-4"
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