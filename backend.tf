terraform {
  backend "s3" {
    bucket = "backup-state-terraform"
    key    = "terraform/test"
    region = "us-east-1"
  }
}
