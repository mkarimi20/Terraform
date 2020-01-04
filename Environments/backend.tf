terraform {
  backend "s3" {
    bucket = "terraform-us-karimi"
    key    = "infrustructure/ec2/state"
    region = "us-east-1"
  }
}