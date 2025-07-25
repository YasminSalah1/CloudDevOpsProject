terraform {
  backend "s3" {
    bucket = "yasmin-project"
    key    = "terraform/state"
    region = "us-east-1"
  }
}

