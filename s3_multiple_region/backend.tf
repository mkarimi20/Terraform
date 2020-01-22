terraform {
  backend "s3" {
    bucket = "karimi-20"
    key    = "infrustructure"
    region = "us-east-1"
  }
}