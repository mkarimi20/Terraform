terraform {
  backend "s3" {
    bucket = "backend-state-karimi"
    key    = "infrustructure"
    region = "us-east-1"
  }
}