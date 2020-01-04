terraform {
  backend "s3" {
    bucket = "terraform-us-karimi"
    key    = "infrustructure"
    region = "us-east-1"
  }
}